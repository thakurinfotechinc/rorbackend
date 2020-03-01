require 'test_helper'

class BhajansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bhajan = bhajans(:one)
  end

  test "should get index" do
    get bhajans_url
    assert_response :success
  end

  test "should get new" do
    get new_bhajan_url
    assert_response :success
  end

  test "should create bhajan" do
    assert_difference('Bhajan.count') do
      post bhajans_url, params: { bhajan: { image_url: @bhajan.image_url, title: @bhajan.title, type: @bhajan.type, url: @bhajan.url } }
    end

    assert_redirected_to bhajan_url(Bhajan.last)
  end

  test "should show bhajan" do
    get bhajan_url(@bhajan)
    assert_response :success
  end

  test "should get edit" do
    get edit_bhajan_url(@bhajan)
    assert_response :success
  end

  test "should update bhajan" do
    patch bhajan_url(@bhajan), params: { bhajan: { image_url: @bhajan.image_url, title: @bhajan.title, type: @bhajan.type, url: @bhajan.url } }
    assert_redirected_to bhajan_url(@bhajan)
  end

  test "should destroy bhajan" do
    assert_difference('Bhajan.count', -1) do
      delete bhajan_url(@bhajan)
    end

    assert_redirected_to bhajans_url
  end
end
