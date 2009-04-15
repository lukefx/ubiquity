class UsersApi < ActionWebService::API::Base

  api_method :get_permissions, :expects => [{:user_id => :int}], :returns => [StringArray]
  api_method :get_roles, :expects => [{:user_id => :int}], :returns => [StringArray]
  api_method :get_info, :expects => [{:user_id => :int}], :returns => [User]

end
