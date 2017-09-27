require 'spyfu/client'
require 'spyfu/request'
require 'spyfu/api/base'

require 'spyfu/api/ad_history'
require 'spyfu/api/core'
require 'spyfu/api/kss'
require 'spyfu/api/leads'
require 'spyfu/api/url'
require 'spyfu/api/weekly_tracking'

module SpyFu

  def self.client(app_id, secret_key)
    SpyFu::Client.new(app_id, secret_key)
  end

end
