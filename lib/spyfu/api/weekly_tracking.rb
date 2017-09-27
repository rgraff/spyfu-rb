module SpyFu
  module Api
    class WeeklyTracking < Base
      # More information: https://www.spyfu.com/apis/WeeklyTracking_Api/get_groups
      BASE_ENDPOINT = 'weeklytracking_api'
    
      # Add terms to group
      def add_terms(params)
        send_get "add_terms", params
      end

      # Get list of groups by name
      def get_groups(params)
        send_get "get_groups", params
      end

      # Get list of groups by domain
      def get_groups_by_domain(params)
        send_get "get_groups_by_domain", params
      end

      # Get list of terms by list ID
      def get_terms(params)
        send_get "get_terms", params
      end

      # Get term metrics
      def get_term_data(params)
        send_get "get_term_data", params
      end

      # Delete term from group
      def delete_term(params)
        send_get "delete_term", params
      end

      # Delete group list
      def delete_group(params)
        send_get "delete_group", params
      end

      # Backward compatibility
      def delete_terms(params)
        delete_term(params)
      end

    end
  end
end
