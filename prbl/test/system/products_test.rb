require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Checkpoints", with: @product.checkpoints
    fill_in "Due Date", with: @product.due_date
    fill_in "Learning Outcomes", with: @product.learning_outcomes
    fill_in "Learning Strategies", with: @product.learning_strategies
    fill_in "Name", with: @product.name
    fill_in "Project", with: @product.project_id
    fill_in "Team Or Individual", with: @product.team_or_individual
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Checkpoints", with: @product.checkpoints
    fill_in "Due Date", with: @product.due_date
    fill_in "Learning Outcomes", with: @product.learning_outcomes
    fill_in "Learning Strategies", with: @product.learning_strategies
    fill_in "Name", with: @product.name
    fill_in "Project", with: @product.project_id
    fill_in "Team Or Individual", with: @product.team_or_individual
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
