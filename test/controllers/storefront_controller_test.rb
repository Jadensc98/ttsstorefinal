require 'test_helper'

class StorefrontControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get storefront_home_url
    assert_response :success
  end

  test "should get all_items" do
    get storefront_all_items_url
    assert_response :success
  end

  test "should get mens_items" do
    get storefront_mens_items_url
    assert_response :success
  end

  test "should get womens_items" do
    get storefront_womens_items_url
    assert_response :success
  end

  test "should get items_by_brand" do
    get storefront_items_by_brand_url
    assert_response :success
  end

  test "should get items_by_category" do
    get storefront_items_by_category_url
    assert_response :success
  end

end
