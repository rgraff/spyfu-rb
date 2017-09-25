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

        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/paid_kws", params, nil, client.app_id, client.secret_key)
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
        
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/organic_kws", params, nil, client.app_id, client.secret_key)
      end

      # Get paid estimates from url
      def paid_estimates(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/paid_estimates", params, nil, client.app_id, client.secret_key)
      end

      # Get organic estimates from url
      def organic_estimates(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/organic_estimates", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
