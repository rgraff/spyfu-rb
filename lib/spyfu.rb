require 'spyfu/client'
require 'spyfu/request'
require 'spyfu/api/base'
require 'spyfu/api/kss'
require 'spyfu/api/weekly_tracking'
require 'spyfu/api/url'

module SpyFu

  def self.client(account_id, account_key)
    SpyFu::Client.new(account_id, account_key)
  end

end
