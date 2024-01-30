module Elasticsearch
  module API
    # Helper object to access response body, status and headers
    #
    # Minimal wrapper around `HTTP::Client::Response` to use status codes and parsed body
    class Response
      getter :body, :status, :headers

      def initialize(body : JSON::Any | String, status : Int32, headers : HTTP::Headers)
        @status = status
        @body = body
        @headers = headers
      end
    end
  end
end
