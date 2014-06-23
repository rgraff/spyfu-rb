module SpyFu
  module Api
    class WeeklyTracking < Base
      BASE_ENDPOINT = 'weeklytracking.api'
    end

    def add_terms(params)
      SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/add_terms", params, nil, client.account_id, client.account_key)
    end

    def get_groups(params)
      SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_groups", params, nil, client.account_id, client.account_key)
    end

    def get_terms(params)
      SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_terms", params, nil, client.account_id, client.account_key)
    end

    def get_term_data(params)
      SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/get_term_data", params, nil, client.account_id, client.account_key)
    end

    def delete_terms(params)
      SpyFu::Request.new('GET', "#{BASE_ENDPOINT}/delete_terms", params, nil, client.account_id, client.account_key)
    end

  end
end
