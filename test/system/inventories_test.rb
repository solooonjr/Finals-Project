require "application_system_test_case"

class InventoriesTest < ApplicationSystemTestCase
  setup do
    @inventory = inventories(:one)
  end

  test "visiting the index" do
    visit inventories_url
    assert_selector "h1", text: "Inventories"
  end

  test "creating a Inventory" do
    visit inventories_url
    click_on "New Inventory"

    fill_in "Available", with: @inventory.available
    fill_in "Committed", with: @inventory.committed
    fill_in "In stock", with: @inventory.in_stock
    fill_in "Ordered", with: @inventory.ordered
    fill_in "Product name", with: @inventory.product_name
    click_on "Create Inventory"

    assert_text "Inventory was successfully created"
    click_on "Back"
  end

  test "updating a Inventory" do
    visit inventories_url
    click_on "Edit", match: :first

    fill_in "Available", with: @inventory.available
    fill_in "Committed", with: @inventory.committed
    fill_in "In stock", with: @inventory.in_stock
    fill_in "Ordered", with: @inventory.ordered
    fill_in "Product name", with: @inventory.product_name
    click_on "Update Inventory"

    assert_text "Inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Inventory" do
    visit inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inventory was successfully destroyed"
  end
end
