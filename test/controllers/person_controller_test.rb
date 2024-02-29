require "test_helper"

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get person_create_url
    assert_response :success
  end
end
