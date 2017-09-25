module SpyFu
  class Client
    attr :app_id, :secret_key

    def initialize(app_id, secret_key)
      @app_id = app_id
      @secret_key = secret_key
    end

    def kss_api
      SpyFu::Api::Kss.new(self)
    end

    def weekly_tracking_api
      SpyFu::Api::WeeklyTracking.new(self)
    end

    def url_api
      SpyFu::Api::Url.new(self)
    end

    def leads_api
      SpyFu::Api::Leads.new(self)
    end

    def ad_history_api
      SpyFu::Api::AdHistory.new(self)
    end

    def core_api
      SpyFu::Api::Core.new(self)
    end
  end
end
