require "application_system_test_case"

class YogasTest < ApplicationSystemTestCase
  setup do
    @yoga = yogas(:one)
  end

  test "visiting the index" do
    visit yogas_url
    assert_selector "h1", text: "Yogas"
  end

  test "creating a Yoga" do
    visit yogas_url
    click_on "New Yoga"

    fill_in "Description en", with: @yoga.description_en
    fill_in "Description hi", with: @yoga.description_hi
    fill_in "Image path", with: @yoga.image_path
    fill_in "Title", with: @yoga.title
    fill_in "Yoga type", with: @yoga.yoga_type
    click_on "Create Yoga"

    assert_text "Yoga was successfully created"
    click_on "Back"
  end

  test "updating a Yoga" do
    visit yogas_url
    click_on "Edit", match: :first

    fill_in "Description en", with: @yoga.description_en
    fill_in "Description hi", with: @yoga.description_hi
    fill_in "Image path", with: @yoga.image_path
    fill_in "Title", with: @yoga.title
    fill_in "Yoga type", with: @yoga.yoga_type
    click_on "Update Yoga"

    assert_text "Yoga was successfully updated"
    click_on "Back"
  end

  test "destroying a Yoga" do
    visit yogas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Yoga was successfully destroyed"
  end
end
