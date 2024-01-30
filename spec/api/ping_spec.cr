require "./../spec_helper"

describe Elasticsearch do
  context "Ping" do
    it "performs request" do
      client.ping.should eq true
    end
  end
end
