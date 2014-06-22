require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe SpyFu do
  let(:account_id) { '1234' }
  let(:account_key) { 'abcd' }

  describe "client" do
    it "should return a client" do
      SpyFu.client(account_id, account_key).should be_a(SpyFu::Client)
    end
  end

end
