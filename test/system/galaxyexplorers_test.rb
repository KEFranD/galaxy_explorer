require "application_system_test_case"

class GalaxyexplorersTest < ApplicationSystemTestCase
  setup do
    @galaxyexplorer = galaxyexplorers(:one)
  end

  test "visiting the index" do
    visit galaxyexplorers_url
    assert_selector "h1", text: "Galaxyexplorers"
  end

  test "should create galaxyexplorer" do
    visit galaxyexplorers_url
    click_on "New galaxyexplorer"

    fill_in "Name", with: @galaxyexplorer.name
    fill_in "User", with: @galaxyexplorer.user_id
    click_on "Create Galaxyexplorer"

    assert_text "Galaxyexplorer was successfully created"
    click_on "Back"
  end

  test "should update Galaxyexplorer" do
    visit galaxyexplorer_url(@galaxyexplorer)
    click_on "Edit this galaxyexplorer", match: :first

    fill_in "Name", with: @galaxyexplorer.name
    fill_in "User", with: @galaxyexplorer.user_id
    click_on "Update Galaxyexplorer"

    assert_text "Galaxyexplorer was successfully updated"
    click_on "Back"
  end

  test "should destroy Galaxyexplorer" do
    visit galaxyexplorer_url(@galaxyexplorer)
    click_on "Destroy this galaxyexplorer", match: :first

    assert_text "Galaxyexplorer was successfully destroyed"
  end
end
