require 'spyfu/client'
require 'spyfu/request'
require 'spyfu/api/base'
require 'spyfu/api/kss'
require 'spyfu/api/weekly_tracking'
require 'spyfu/api/url'

module SpyFu

  def self.client(app_id, secret_key)
    SpyFu::Client.new(app_id, secret_key)
  end

end
