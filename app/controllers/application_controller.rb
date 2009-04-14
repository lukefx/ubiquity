# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # before_filter :verify_access

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '346d85bc183766389a48e34c76b3286a'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  private 

  # def verify_access
  #   authenticate_or_request_with_http_basic("Ubiquity") do |username, password|
  #     username == "luke" && password == "1234"
  #   end
  # end

  
end
