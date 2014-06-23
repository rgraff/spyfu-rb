module SpyFu
  module Api
    class Base
      attr :client
      
      def initialize(client)
        @client = client
      end
    end
  end
end
