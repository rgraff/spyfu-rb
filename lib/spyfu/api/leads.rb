module SpyFu
  module Api
    class Leads < Base
      # More information: https://www.spyfu.com/api/docs/leads
      BASE_ENDPOINT = 'leads_api'

      # Get list of contacts for a domain
      def get_contact_card(params)
        send_get "get_contact_card", params
      end

      # Get list of contact leads
      def get_grid(params)
        send_get "get_grid", params
      end

      # Get list of contacts for a domain
      def get_top_list(params)
        send_get "get_top_list", params
      end

    end
  end
end
