module Api::V1::MemberApi
    include API
    include DataFetchService
    class ApiV1 < Base
        desc "testing"  
        params do
            # optional :url, type: String
        end
        post "/member" do
          [201, "connected"]
        end
    end
end