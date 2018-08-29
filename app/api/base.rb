module API  
    class Base < Grape::API
        format :json
        mount Api::V1::MemberApi::ApiV1
    end
  end  