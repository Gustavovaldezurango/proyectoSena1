require "test_helper"

class Areas::ProgramasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get areas_programas_index_url
    assert_response :success
  end
end
