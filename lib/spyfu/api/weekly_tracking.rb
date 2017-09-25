module SpyFu
  module Api
    class WeeklyTracking < Base
      # More information: https://www.spyfu.com/apis/WeeklyTracking_Api/get_groups
      BASE_ENDPOINT = 'weeklytracking_api'
    
      # Add terms to group
      def add_terms(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/add_terms", params, nil, client.app_id, client.secret_key)
      end

      # Get list of groups by name
      def get_groups(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_groups", params, nil, client.app_id, client.secret_key)
      end

      # Get list of groups by domain
      def get_groups_by_domain(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_groups_by_domain", params, nil, client.app_id, client.secret_key)
      end

      # Get list of terms by list ID
      def get_terms(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_terms", params, nil, client.app_id, client.secret_key)
      end

      # Get term metrics
      def get_term_data(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_term_data", params, nil, client.app_id, client.secret_key)
      end

      # Delete term from group
      def delete_term(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/delete_term", params, nil, client.app_id, client.secret_key)
      end

      # Delete group list
      def delete_group(params)
        SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/delete_group", params, nil, client.app_id, client.secret_key)
      end

      # Backward compatibility
      def delete_terms(params)
        delete_term(params)
      end

    end
  end
end
