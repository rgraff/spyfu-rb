require 'spyfu/client'

module SpyFu

  def self.client(account_id, account_key)
    SpyFu::Client.new(account_id, account_key)
  end

end
