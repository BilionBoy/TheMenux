require "application_system_test_case"

class PromotionProductsTest < ApplicationSystemTestCase
  setup do
    @promotion_product = promotion_products(:one)
  end

  test "visiting the index" do
    visit promotion_products_url
    assert_selector "h1", text: "Promotion products"
  end

  test "should create promotion product" do
    visit promotion_products_url
    click_on "New promotion product"

    fill_in "Product", with: @promotion_product.product_id
    fill_in "Promotion", with: @promotion_product.promotion_id
    click_on "Create Promotion product"

    assert_text "Promotion product was successfully created"
    click_on "Back"
  end

  test "should update Promotion product" do
    visit promotion_product_url(@promotion_product)
    click_on "Edit this promotion product", match: :first

    fill_in "Product", with: @promotion_product.product_id
    fill_in "Promotion", with: @promotion_product.promotion_id
    click_on "Update Promotion product"

    assert_text "Promotion product was successfully updated"
    click_on "Back"
  end

  test "should destroy Promotion product" do
    visit promotion_product_url(@promotion_product)
    click_on "Destroy this promotion product", match: :first

    assert_text "Promotion product was successfully destroyed"
  end
end
