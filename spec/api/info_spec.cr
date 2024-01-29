require "./../spec_helper"

describe Elasticsearch do
  context "Info" do
    it "performs request" do
      client.host.should eq TEST_HOST
      response = client.info
      response.status.should eq 200
    end
  end
end
