require "http/client"
require "json"
require "./api/**"

# TODO: Write documentation for `Elasticsearch`
module Elasticsearch
  VERSION = "0.1.0"
  HTTP_GET = "GET"
  HTTP_PUT = "PUT"
  HTTP_HEAD = "HEAD"
  HTTP_POST = "POST"
  HTTP_DELETE = "DELETE"

  class Client
    include Elasticsearch::API::Actions::Info

    getter :host

    def initialize(host : String = "http://localhost:9200")
      @host = host
    end

    def perform_request(method, path, headers = nil, body = nil)
      response = HTTP::Client.get(@host)
      Elasticsearch::API::Response.new(JSON.parse(response.body), response.status_code, response.headers)
    end
  end
end

# client = Elasticsearch::Client.new
# coso = client.info
# puts coso.body
# puts coso.headers
# puts coso.status
