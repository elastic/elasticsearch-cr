require "spec"
require "../src/elasticsearch"
require "spec/formatter"

Spec.add_formatter(Spec::VerboseFormatter.new)

TEST_HOST = "http://localhost:9200"

def client
  Elasticsearch::Client.new(TEST_HOST)
end
