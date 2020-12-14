require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Account type", with: @quote.account_type
    fill_in "County", with: @quote.county_id
    fill_in "Equip lines", with: @quote.equip_lines
    check "Locked" if @quote.locked
    fill_in "Material lines", with: @quote.material_lines
    fill_in "Name", with: @quote.name
    fill_in "Referal", with: @quote.referal
    fill_in "Sale type", with: @quote.sale_type
    fill_in "Service lines", with: @quote.service_lines
    fill_in "Site", with: @quote.site_id
    fill_in "Source", with: @quote.source
    fill_in "Started", with: @quote.started
    fill_in "State", with: @quote.state_id
    check "Taxable" if @quote.taxable
    fill_in "Updated", with: @quote.updated
    fill_in "User", with: @quote.user_id
    fill_in "Wire lines", with: @quote.wire_lines
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Account type", with: @quote.account_type
    fill_in "County", with: @quote.county_id
    fill_in "Equip lines", with: @quote.equip_lines
    check "Locked" if @quote.locked
    fill_in "Material lines", with: @quote.material_lines
    fill_in "Name", with: @quote.name
    fill_in "Referal", with: @quote.referal
    fill_in "Sale type", with: @quote.sale_type
    fill_in "Service lines", with: @quote.service_lines
    fill_in "Site", with: @quote.site_id
    fill_in "Source", with: @quote.source
    fill_in "Started", with: @quote.started
    fill_in "State", with: @quote.state_id
    check "Taxable" if @quote.taxable
    fill_in "Updated", with: @quote.updated
    fill_in "User", with: @quote.user_id
    fill_in "Wire lines", with: @quote.wire_lines
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
