module SpyFu
  module Api
    class Url < Base
      # More information: https://www.spyfu.com/api/docs/url
      BASE_ENDPOINT = 'url_api'

      # Get paid data from url
      def paid_kws(params)
        # Adjust params for backward compatibility
        if !params[:bgdsv].nil?
          params[:egdsv] = params[:bgdsv] 
          params.delete(:bgdsv)
        end

        if !params[:bldsv].nil?
          params[:eldsv] = params[:bldsv]
          params.delete(:bldsv)
        end

        send_get "paid_kws", params
      end

      # Get organic data from url
      def organic_kws(params)
        # Adjust params for backward compatibility
        if !params[:blmsv].nil?
          params[:elmsv] = params[:blmsv] 
          params.delete(:blmsv)
        end

        if !params[:bgmsv].nil?
          params[:egmsv] = params[:bgmsv]
          params.delete(:bgmsv)
        end
        
        send_get "organic_kws", params
      end

      # Get paid estimates from url
      def paid_estimates(params)
        send_get "paid_estimates", params
      end

      # Get organic estimates from url
      def organic_estimates(params)
        send_get "organic_estimates", params
      end

    end
  end
end
