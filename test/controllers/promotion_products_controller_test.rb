require "test_helper"

class PromotionProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promotion_product = promotion_products(:one)
  end

  test "should get index" do
    get promotion_products_url
    assert_response :success
  end

  test "should get new" do
    get new_promotion_product_url
    assert_response :success
  end

  test "should create promotion_product" do
    assert_difference("PromotionProduct.count") do
      post promotion_products_url, params: { promotion_product: { product_id: @promotion_product.product_id, promotion_id: @promotion_product.promotion_id } }
    end

    assert_redirected_to promotion_product_url(PromotionProduct.last)
  end

  test "should show promotion_product" do
    get promotion_product_url(@promotion_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_promotion_product_url(@promotion_product)
    assert_response :success
  end

  test "should update promotion_product" do
    patch promotion_product_url(@promotion_product), params: { promotion_product: { product_id: @promotion_product.product_id, promotion_id: @promotion_product.promotion_id } }
    assert_redirected_to promotion_product_url(@promotion_product)
  end

  test "should destroy promotion_product" do
    assert_difference("PromotionProduct.count", -1) do
      delete promotion_product_url(@promotion_product)
    end

    assert_redirected_to promotion_products_url
  end
end
