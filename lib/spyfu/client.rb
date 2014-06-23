module SpyFu
  class Client
    attr :account_id, :account_key

    def initialize(account_id, account_key)
      @account_id = account_id
      @account_key = account_key
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
  end
end
