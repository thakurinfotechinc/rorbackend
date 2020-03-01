require "application_system_test_case"

class BhajansTest < ApplicationSystemTestCase
  setup do
    @bhajan = bhajans(:one)
  end

  test "visiting the index" do
    visit bhajans_url
    assert_selector "h1", text: "Bhajans"
  end

  test "creating a Bhajan" do
    visit bhajans_url
    click_on "New Bhajan"

    fill_in "Image url", with: @bhajan.image_url
    fill_in "Title", with: @bhajan.title
    fill_in "Type", with: @bhajan.type
    fill_in "Url", with: @bhajan.url
    click_on "Create Bhajan"

    assert_text "Bhajan was successfully created"
    click_on "Back"
  end

  test "updating a Bhajan" do
    visit bhajans_url
    click_on "Edit", match: :first

    fill_in "Image url", with: @bhajan.image_url
    fill_in "Title", with: @bhajan.title
    fill_in "Type", with: @bhajan.type
    fill_in "Url", with: @bhajan.url
    click_on "Update Bhajan"

    assert_text "Bhajan was successfully updated"
    click_on "Back"
  end

  test "destroying a Bhajan" do
    visit bhajans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bhajan was successfully destroyed"
  end
end
