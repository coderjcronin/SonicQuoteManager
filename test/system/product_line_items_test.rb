require "application_system_test_case"

class ProductLineItemsTest < ApplicationSystemTestCase
  setup do
    @product_line_item = product_line_items(:one)
  end

  test "visiting the index" do
    visit product_line_items_url
    assert_selector "h1", text: "Product Line Items"
  end

  test "creating a Product line item" do
    visit product_line_items_url
    click_on "New Product Line Item"

    fill_in "Full service price", with: @product_line_item.full_service_price
    fill_in "Labor units", with: @product_line_item.labor_units
    fill_in "Part", with: @product_line_item.part_id
    fill_in "Quanity", with: @product_line_item.quanity
    fill_in "Quote", with: @product_line_item.quote_id
    fill_in "Unit price", with: @product_line_item.unit_price
    click_on "Create Product line item"

    assert_text "Product line item was successfully created"
    click_on "Back"
  end

  test "updating a Product line item" do
    visit product_line_items_url
    click_on "Edit", match: :first

    fill_in "Full service price", with: @product_line_item.full_service_price
    fill_in "Labor units", with: @product_line_item.labor_units
    fill_in "Part", with: @product_line_item.part_id
    fill_in "Quanity", with: @product_line_item.quanity
    fill_in "Quote", with: @product_line_item.quote_id
    fill_in "Unit price", with: @product_line_item.unit_price
    click_on "Update Product line item"

    assert_text "Product line item was successfully updated"
    click_on "Back"
  end

  test "destroying a Product line item" do
    visit product_line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product line item was successfully destroyed"
  end
end
