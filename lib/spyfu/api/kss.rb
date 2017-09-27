module SpyFu
  module Api
    class Kss < Base
      # More information: https://www.spyfu.com/apis/ad_history_api/domain_ad_history
      BASE_ENDPOINT = 'kss_api'

      # Get list of related keywords
      def related_keywords(params)
        send_get "kss_kws", params
      end

      # Get list of domains related to keyword
      def domain_related_keywords(params)
        send_get "kss_domains", params
      end

      # Backward compatibility
      def get_term_page_keywords(params)
      	params[:q] = params[:keyword]
        if !params[:maxRows].nil?
          params[:r] = params[:maxRows] 
          params.delete(:maxRows)
        end
        related_keywords(params)
      end

    end
  end
end
