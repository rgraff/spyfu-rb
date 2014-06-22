module SpyFu
  class Client
    attr :account_id, :account_key

    def initialize(account_id, account_key)
      @account_id = account_id
      @account_key = account_key
      @authenticated = false
    end

    def authenticated?
      @authenticated
    end
  end
end
