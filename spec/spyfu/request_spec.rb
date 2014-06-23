require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe SpyFu::Request do
  let(:params) do
    { :q => "spyfu.com/blog", :r => 5, :bldsv => 888 }
  end
  let(:app_id){ "0462153A-9C82-4C35-8349-AE3AA0F5913B" } # Taken from SpyFu's examples
  let(:secret_key) { "D3YIBQFQXFBFQW2R1WTDVG" } # Taken from SpyFu's examples
  let(:request) do
    SpyFu::Request.new('GET', 'url_api/organic_kws', params, {}, app_id, secret_key)
  end

  before :each do
    request.stub(:timestamp).and_return("Sunday, June 22, 2014 06:32:51 PM")
  end

  describe "signature" do
    it "should return a signature" do
      request.signature.should == "CHr5aE9lS+Fr8TN+S7FKNNF8gl3pKn/6JTChB7GBeE8="
    end
  end

  describe "message" do
    it "should return the message" do
      request.message.should ==  "GET\nSunday, June 22, 2014 06:32:51 PM\n/apis/url_api/organic_kws\nbldsv=888&q=spyfu.com/blog&r=5"
    end
  end

  describe "request" do
    it "should be a request object" do
      VCR.use_cassette('complete_request') do
        req = request.request
        req.should be_a(Net::HTTPOK)
      end
    end
  end

end
