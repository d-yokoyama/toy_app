require "application_system_test_case"

class MicroposstsTest < ApplicationSystemTestCase
  setup do
    @microposst = micropossts(:one)
  end

  test "visiting the index" do
    visit micropossts_url
    assert_selector "h1", text: "Micropossts"
  end

  test "creating a Microposst" do
    visit micropossts_url
    click_on "New Microposst"

    fill_in "Content", with: @microposst.content
    fill_in "User", with: @microposst.user_id
    click_on "Create Microposst"

    assert_text "Microposst was successfully created"
    click_on "Back"
  end

  test "updating a Microposst" do
    visit micropossts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @microposst.content
    fill_in "User", with: @microposst.user_id
    click_on "Update Microposst"

    assert_text "Microposst was successfully updated"
    click_on "Back"
  end

  test "destroying a Microposst" do
    visit micropossts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Microposst was successfully destroyed"
  end
end
