require 'test_helper'

class ContaktsControllerTest < ActionController::TestCase
  test "should get contakts" do
    get :contakts
    assert_response :success
  end

end
