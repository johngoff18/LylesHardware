require "application_system_test_case"

class DealsTest < ApplicationSystemTestCase
  setup do
    @deal = deals(:one)
  end

  test "visiting the index" do
    visit deals_url
    assert_selector "h1", text: "Deals"
  end

  test "creating a Deal" do
    visit deals_url
    click_on "New Deal"

    fill_in "Description", with: @deal.description
    fill_in "Image url", with: @deal.image_url
    fill_in "List price", with: @deal.list_price
    fill_in "Name", with: @deal.name
    fill_in "Purchase url", with: @deal.purchase_url
    fill_in "Sale price", with: @deal.sale_price
    click_on "Create Deal"

    assert_text "Deal was successfully created"
    click_on "Back"
  end

  test "updating a Deal" do
    visit deals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @deal.description
    fill_in "Image url", with: @deal.image_url
    fill_in "List price", with: @deal.list_price
    fill_in "Name", with: @deal.name
    fill_in "Purchase url", with: @deal.purchase_url
    fill_in "Sale price", with: @deal.sale_price
    click_on "Update Deal"

    assert_text "Deal was successfully updated"
    click_on "Back"
  end

  test "destroying a Deal" do
    visit deals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Deal was successfully destroyed"
  end
end
