require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get my_photo" do
    get :my_photo
    assert_response :success
  end

end
