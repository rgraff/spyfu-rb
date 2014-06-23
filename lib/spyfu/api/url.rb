module SpyFu
  module Api
    class Url < Base
      BASE_ENDPOINT = 'url.api'

      def organic_kws(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/organic_kws", params, nil, client.app_id, client.secret_key)
      end

      def paid_kws(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/paid_kws", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
