require 'test_helper'

class YogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yog = yogs(:one)
  end

  test "should get index" do
    get yogs_url
    assert_response :success
  end

  test "should get new" do
    get new_yog_url
    assert_response :success
  end

  test "should create yog" do
    assert_difference('Yog.count') do
      post yogs_url, params: { yog: { description_en: @yog.description_en, description_hi: @yog.description_hi, image_path: @yog.image_path, title: @yog.title } }
    end

    assert_redirected_to yog_url(Yog.last)
  end

  test "should show yog" do
    get yog_url(@yog)
    assert_response :success
  end

  test "should get edit" do
    get edit_yog_url(@yog)
    assert_response :success
  end

  test "should update yog" do
    patch yog_url(@yog), params: { yog: { description_en: @yog.description_en, description_hi: @yog.description_hi, image_path: @yog.image_path, title: @yog.title } }
    assert_redirected_to yog_url(@yog)
  end

  test "should destroy yog" do
    assert_difference('Yog.count', -1) do
      delete yog_url(@yog)
    end

    assert_redirected_to yogs_url
  end
end
