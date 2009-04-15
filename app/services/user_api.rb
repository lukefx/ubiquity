class UserApi < ActionWebService::API::Base

  api_method :get_users, :returns => [[:string]]

end
