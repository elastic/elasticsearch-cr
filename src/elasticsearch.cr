require "http/client"
require "json"
require "./api/**"

# Experimental Elasticsearch client in Crystal, ported from elasticsearch-ruby
#
module Elasticsearch
  VERSION = "0.1.0"

  class Client
    include Elasticsearch::API::Actions

    getter :host

    # Creates an `Elasticsearch::Client` with a given host
    def initialize(host : String = "http://localhost:9200")
      @host = URI.parse(host)
    end

    # Main function to perform the HTTP Request to Elasticsearch
    #
    # Returns an `Elasticsearch::API::Response` object
    def perform_request(method, path, params = Hash(String, String).new, body = nil, headers = nil)
      params = URI::Params.encode(params)
      request = URI.new(@host.scheme, @host.host, @host.port, path, query: params)
      # TODO: Headers management and different content-types
      headers = HTTP::Headers{"content-type" => "application/json"}

      response = HTTP::Client.exec(method, request, headers, body)

      # TODO: Body management
      response_body = if response.headers["content-type"] == "application/json" && !response.body.empty?
               JSON.parse(response.body)
             else
               response.body
             end
      Elasticsearch::API::Response.new(response_body, response.status_code, response.headers)
    end
  end

  # API namespace specific code
  module API
    HTTP_GET = "GET"
    HTTP_PUT = "PUT"
    HTTP_HEAD = "HEAD"
    HTTP_POST = "POST"
    HTTP_DELETE = "DELETE"
  end
end
