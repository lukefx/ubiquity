class UserController < ApplicationController

  wsdl_service_name 'User'
  web_service_api UserApi
  web_service_scaffold :invocation if Rails.env == 'development'

  def get_users
    User.all
  end
  

end
