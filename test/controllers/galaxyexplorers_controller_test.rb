require "test_helper"

class GalaxyexplorersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galaxyexplorer = galaxyexplorers(:one)
  end

  test "should get index" do
    get galaxyexplorers_url
    assert_response :success
  end

  test "should get new" do
    get new_galaxyexplorer_url
    assert_response :success
  end

  test "should create galaxyexplorer" do
    assert_difference("Galaxyexplorer.count") do
      post galaxyexplorers_url, params: { galaxyexplorer: { name: @galaxyexplorer.name, user_id: @galaxyexplorer.user_id } }
    end

    assert_redirected_to galaxyexplorer_url(Galaxyexplorer.last)
  end

  test "should show galaxyexplorer" do
    get galaxyexplorer_url(@galaxyexplorer)
    assert_response :success
  end

  test "should get edit" do
    get edit_galaxyexplorer_url(@galaxyexplorer)
    assert_response :success
  end

  test "should update galaxyexplorer" do
    patch galaxyexplorer_url(@galaxyexplorer), params: { galaxyexplorer: { name: @galaxyexplorer.name, user_id: @galaxyexplorer.user_id } }
    assert_redirected_to galaxyexplorer_url(@galaxyexplorer)
  end

  test "should destroy galaxyexplorer" do
    assert_difference("Galaxyexplorer.count", -1) do
      delete galaxyexplorer_url(@galaxyexplorer)
    end

    assert_redirected_to galaxyexplorers_url
  end
end
