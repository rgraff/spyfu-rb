require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe SpyFu do
  let(:app_id) { '1234' }
  let(:secret_key) { 'abcd' }

  describe "client" do
    it "should return a client" do
      SpyFu.client(app_id, secret_key).should be_a(SpyFu::Client)
    end
  end

end
