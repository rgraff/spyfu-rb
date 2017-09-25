module SpyFu
  module Api
    class Url < Base
      # More information: https://www.spyfu.com/api/docs/url
      BASE_ENDPOINT = 'url_api'

      # Get paid data from url
      def paid_kws(params)
        # Adjust params for backward compatibility
        params[:egdsv] = params[:bgdsv] if !params[:bgdsv].empty?
        params[:eldsv] = params[:bldsv] if !params[:bldsv].empty?
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/paid_kws", params, nil, client.app_id, client.secret_key)
      end

      # Get organic data from url
      def organic_kws(params)
        # Adjust params for backward compatibility
        params[:elmsv] = params[:blmsv] if !params[:blmsv].empty?
        params[:egmsv] = params[:bgmsv] if !params[:bgmsv].empty?
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
