module SpyFu
  module Api
    class Core < Base
      # More information: https://www.spyfu.com/api/docs/core
      BASE_ENDPOINT = 'core_api'

      # Get US metrics from domain
      def get_domain_metrics_us(params)
        send_get "get_domain_metrics_us", params
      end
      
      # Get UK metrics from domain
      def get_domain_metrics_uk(params)
        send_get "get_domain_metrics_uk", params
      end
      
      # Get history of US domain's budget
      def get_domain_budget_history_us(params)
        send_get "get_domain_budget_history_us", params
      end
      
      # Get history of UK domain's budget
      def get_domain_budget_history_uk(params)
        send_get "get_domain_budget_history_uk", params
      end
      
      # Get US competitors from domain
      def get_domain_competitors_us(params)
        send_get "get_domain_competitors_us", params
      end
      
      # Get UK competitors from domain
      def get_domain_competitors_uk(params)
        send_get "get_domain_competitors_uk", params
      end

    end
  end
end
