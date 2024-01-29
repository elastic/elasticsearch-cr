module Elasticsearch
  module API
    class Response
      getter :body, :status, :headers

      def initialize(body : JSON::Any, status : Int32, headers : HTTP::Headers)
        @status = status
        @body = body
        @headers = headers
      end
    end
  end
end
