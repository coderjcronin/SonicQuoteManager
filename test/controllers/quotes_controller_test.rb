require 'test_helper'

class QuotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quote = quotes(:one)
  end

  test "should get index" do
    get quotes_url
    assert_response :success
  end

  test "should get new" do
    get new_quote_url
    assert_response :success
  end

  test "should create quote" do
    assert_difference('Quote.count') do
      post quotes_url, params: { quote: { account_type: @quote.account_type, county_id: @quote.county_id, equip_lines: @quote.equip_lines, locked: @quote.locked, material_lines: @quote.material_lines, name: @quote.name, referal: @quote.referal, sale_type: @quote.sale_type, service_lines: @quote.service_lines, site_id: @quote.site_id, source: @quote.source, started: @quote.started, state_id: @quote.state_id, taxable: @quote.taxable, updated: @quote.updated, user_id: @quote.user_id, wire_lines: @quote.wire_lines } }
    end

    assert_redirected_to quote_url(Quote.last)
  end

  test "should show quote" do
    get quote_url(@quote)
    assert_response :success
  end

  test "should get edit" do
    get edit_quote_url(@quote)
    assert_response :success
  end

  test "should update quote" do
    patch quote_url(@quote), params: { quote: { account_type: @quote.account_type, county_id: @quote.county_id, equip_lines: @quote.equip_lines, locked: @quote.locked, material_lines: @quote.material_lines, name: @quote.name, referal: @quote.referal, sale_type: @quote.sale_type, service_lines: @quote.service_lines, site_id: @quote.site_id, source: @quote.source, started: @quote.started, state_id: @quote.state_id, taxable: @quote.taxable, updated: @quote.updated, user_id: @quote.user_id, wire_lines: @quote.wire_lines } }
    assert_redirected_to quote_url(@quote)
  end

  test "should destroy quote" do
    assert_difference('Quote.count', -1) do
      delete quote_url(@quote)
    end

    assert_redirected_to quotes_url
  end
end
