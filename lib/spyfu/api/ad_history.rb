module SpyFu
  module Api
    class AdHistory < Base
      # More information: https://www.spyfu.com/apis/ad_history_api/domain_ad_history
      BASE_ENDPOINT = 'ad_history_api'

      # Get ad history by domain
      def domain_ad_history(params)
        send_get "domain_ad_history", params
      end

      # Get ad history by domain with metrics
      def domain_ad_history_with_metrics(params)
        send_get "domain_ad_history_with_metrics", params
      end

      # Get ad history by domain by Term
      def term_ad_history(params)
        send_get "term_ad_history", params
      end

    end
  end
end
