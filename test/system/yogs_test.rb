require "application_system_test_case"

class YogsTest < ApplicationSystemTestCase
  setup do
    @yog = yogs(:one)
  end

  test "visiting the index" do
    visit yogs_url
    assert_selector "h1", text: "Yogs"
  end

  test "creating a Yog" do
    visit yogs_url
    click_on "New Yog"

    fill_in "Description en", with: @yog.description_en
    fill_in "Description hi", with: @yog.description_hi
    fill_in "Image path", with: @yog.image_path
    fill_in "Title", with: @yog.title
    click_on "Create Yog"

    assert_text "Yog was successfully created"
    click_on "Back"
  end

  test "updating a Yog" do
    visit yogs_url
    click_on "Edit", match: :first

    fill_in "Description en", with: @yog.description_en
    fill_in "Description hi", with: @yog.description_hi
    fill_in "Image path", with: @yog.image_path
    fill_in "Title", with: @yog.title
    click_on "Update Yog"

    assert_text "Yog was successfully updated"
    click_on "Back"
  end

  test "destroying a Yog" do
    visit yogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yog was successfully destroyed"
  end
end
