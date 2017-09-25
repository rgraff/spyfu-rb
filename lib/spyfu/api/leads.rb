module SpyFu
  module Api
    class Leads < Base
      # More information: https://www.spyfu.com/api/docs/leads
      BASE_ENDPOINT = 'leads_api'

      # Get list of contacts for a domain
      def get_contact_card(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_contact_card", params, nil, client.app_id, client.secret_key)
      end

      # Get list of contact leads
      def get_grid(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_grid", params, nil, client.app_id, client.secret_key)
      end

      # Get list of contacts for a domain
      def get_top_list(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_top_list", params, nil, client.app_id, client.secret_key)
      end

    end
  end
end
