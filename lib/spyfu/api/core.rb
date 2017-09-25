module SpyFu
  module Api
    class Core < Base
      # More information: https://www.spyfu.com/api/docs/core
      BASE_ENDPOINT = 'core_api'

      # Get US metrics from domain
      def get_domain_metrics_us(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_metrics_us", params, nil, client.app_id, client.secret_key)
      end
      
      # Get UK metrics from domain
      def get_domain_metrics_uk(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_metrics_uk", params, nil, client.app_id, client.secret_key)
      end
      
      # Get history of US domain's budget
      def get_domain_budget_history_us(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_budget_history_us", params, nil, client.app_id, client.secret_key)
      end
      
      # Get history of UK domain's budget
      def get_domain_budget_history_uk(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_budget_history_uk", params, nil, client.app_id, client.secret_key)
      end
      
      # Get US competitors from domain
      def get_domain_competitors_us(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_competitors_us", params, nil, client.app_id, client.secret_key)
      end
      
      # Get UK competitors from domain
      def get_domain_competitors_uk(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_domain_competitors_uk", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
