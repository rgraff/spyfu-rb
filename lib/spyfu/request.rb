require 'openssl'
require 'base64'
require 'net/http'
require 'time'

module SpyFu
  class Request
    attr :http_method, :params, :post_data, :account_id, :account_key, :url

    HTTP_HEADER_AUTHENTICATION = "Authentication"
    HTTP_HEADER_TIMESTAMP = "Timestamp"
    URL_API_BASE = "http://www.spyfu.com/apis/"

    def initialize(http_method, endpoint, params, post_data, account_id, account_key)
      @http_method = http_method
      @url = URL_API_BASE+endpoint
      @params = params
      @post_data = post_data
      @account_id = account_id
      @account_key = account_key
    end

    def request
        req = Net::HTTP::Get.new(uri.request_uri)

        # add authentiation goodness to request object
        req[HTTP_HEADER_TIMESTAMP] = timestamp
        req[HTTP_HEADER_AUTHENTICATION] = account_id + ":" + signature

        request = Net::HTTP.start(uri.hostname, uri.port) {|http|
          http.request(req)
        }
        return request
    end

    def uri
      @uri ||= URI(url+query_string)
    end

    def query_string
      return '' if params.empty?
      return '?'+params.map { |x| "#{x[0]}=#{x[1]}" }.join("&")
    end

    def timestamp
      @timestamp ||= Time.now.getutc.strftime "%A, %B %d, %Y %I:%M:%S %p"
    end

    def message
      @message ||= [http_method, timestamp, uri.path, parameter_message].join("\n")
    end

    def signature
      digest = OpenSSL::Digest::Digest.new('sha256')
      hmac_digest = OpenSSL::HMAC.digest(digest, account_key, message)
      Base64.encode64(hmac_digest).strip()
    end

    def parameter_message
      return '' if parameter_collection.empty?
      parameter_collection.map { |x| "#{x[0]}=#{x[1]}" }.join("&")
    end

    def parameter_collection
      @parameter_collection ||= begin
        collection = params.to_a + post_data.to_a
        collection.sort
      end
    end

  end

end
