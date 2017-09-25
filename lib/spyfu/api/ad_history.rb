module SpyFu
  module Api
    class AdHistory < Base
      # More information: https://www.spyfu.com/apis/ad_history_api/domain_ad_history
      BASE_ENDPOINT = 'ad_history_api'

      # Get ad history by domain
      def domain_ad_history(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/domain_ad_history", params, nil, client.app_id, client.secret_key)
      end

      # Get ad history by domain with metrics
      def domain_ad_history_with_metrics(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/domain_ad_history_with_metrics", params, nil, client.app_id, client.secret_key)
      end

      # Get ad history by domain by Term
      def term_ad_history(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/term_ad_history", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
