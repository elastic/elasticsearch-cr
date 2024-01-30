require "./spec_helper"

describe Elasticsearch do
  # TODO: Write tests

  it "creates a client" do
    host = "http://localhost:9250"
    client = Elasticsearch::Client.new(host)
    client.host.should eq URI.parse(host)
  end
end
