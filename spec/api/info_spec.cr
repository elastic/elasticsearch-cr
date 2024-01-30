require "./../spec_helper"

describe Elasticsearch do
  context "Info" do
    it "performs request" do
      response = client.info
      response.status.should eq 200
      response.body["tagline"].should eq "You Know, for Search"
    end
  end
end
