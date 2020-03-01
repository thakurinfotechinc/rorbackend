require 'test_helper'

class YogasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yoga = yogas(:one)
  end

  test "should get index" do
    get yogas_url
    assert_response :success
  end

  test "should get new" do
    get new_yoga_url
    assert_response :success
  end

  test "should create yoga" do
    assert_difference('Yoga.count') do
      post yogas_url, params: { yoga: { description_en: @yoga.description_en, description_hi: @yoga.description_hi, image_path: @yoga.image_path, title: @yoga.title, yoga_type: @yoga.yoga_type } }
    end

    assert_redirected_to yoga_url(Yoga.last)
  end

  test "should show yoga" do
    get yoga_url(@yoga)
    assert_response :success
  end

  test "should get edit" do
    get edit_yoga_url(@yoga)
    assert_response :success
  end

  test "should update yoga" do
    patch yoga_url(@yoga), params: { yoga: { description_en: @yoga.description_en, description_hi: @yoga.description_hi, image_path: @yoga.image_path, title: @yoga.title, yoga_type: @yoga.yoga_type } }
    assert_redirected_to yoga_url(@yoga)
  end

  test "should destroy yoga" do
    assert_difference('Yoga.count', -1) do
      delete yoga_url(@yoga)
    end

    assert_redirected_to yogas_url
  end
end
