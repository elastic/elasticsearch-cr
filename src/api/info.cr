module Elasticsearch
  module API
    module Actions
      # Returns basic information about the cluster.
      #
      # See [https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html)
      def info(arguments = Hash(Symbol, String).new)
        arguments = arguments.clone
        headers = arguments.delete(:headers) || Hash(Symbol, String).new
        body   = nil
        method = Elasticsearch::API::HTTP_GET
        path   = ""
        params = Hash(String, String).new

        perform_request(method, path, params, body, headers)
      end
    end
  end
end
