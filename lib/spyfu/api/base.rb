module SpyFu
  module Api
    class Base
      attr :client
      
      def initialize(client)
        @client = client
      end

      def send_get path, params
      	SpyFu::Request.new('GET', "#{self.class::BASE_ENDPOINT}/#{path}", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
