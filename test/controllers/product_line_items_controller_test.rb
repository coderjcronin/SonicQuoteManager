require 'test_helper'

class ProductLineItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_line_item = product_line_items(:one)
  end

  test "should get index" do
    get product_line_items_url
    assert_response :success
  end

  test "should get new" do
    get new_product_line_item_url
    assert_response :success
  end

  test "should create product_line_item" do
    assert_difference('ProductLineItem.count') do
      post product_line_items_url, params: { product_line_item: { full_service_price: @product_line_item.full_service_price, labor_units: @product_line_item.labor_units, part_id: @product_line_item.part_id, quanity: @product_line_item.quanity, quote_id: @product_line_item.quote_id, unit_price: @product_line_item.unit_price } }
    end

    assert_redirected_to product_line_item_url(ProductLineItem.last)
  end

  test "should show product_line_item" do
    get product_line_item_url(@product_line_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_line_item_url(@product_line_item)
    assert_response :success
  end

  test "should update product_line_item" do
    patch product_line_item_url(@product_line_item), params: { product_line_item: { full_service_price: @product_line_item.full_service_price, labor_units: @product_line_item.labor_units, part_id: @product_line_item.part_id, quanity: @product_line_item.quanity, quote_id: @product_line_item.quote_id, unit_price: @product_line_item.unit_price } }
    assert_redirected_to product_line_item_url(@product_line_item)
  end

  test "should destroy product_line_item" do
    assert_difference('ProductLineItem.count', -1) do
      delete product_line_item_url(@product_line_item)
    end

    assert_redirected_to product_line_items_url
  end
end
