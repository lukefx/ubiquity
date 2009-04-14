require File.dirname(__FILE__) + '/../test_helper'
require 'user_controller'

class UserController; def rescue_action(e) raise e end; end

class UserControllerApiTest < Test::Unit::TestCase
  def setup
    @controller = UserController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end
end
