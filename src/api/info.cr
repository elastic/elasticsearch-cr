module Elasticsearch
  module API
    module Actions
      module Info
        def info
          perform_request("GET", "/")
        end
      end
    end
  end
end
