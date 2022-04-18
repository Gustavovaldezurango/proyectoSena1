require "test_helper"

class FichaprogramaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fichaprograma_index_url
    assert_response :success
  end
end
