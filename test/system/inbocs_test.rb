require "application_system_test_case"

class InbocsTest < ApplicationSystemTestCase
  setup do
    @inboc = inbocs(:one)
  end

  test "visiting the index" do
    visit inbocs_url
    assert_selector "h1", text: "Inbocs"
  end

  test "creating a Inboc" do
    visit inbocs_url
    click_on "New Inboc"

    fill_in "Content", with: @inboc.content
    fill_in "Title", with: @inboc.title
    fill_in "User", with: @inboc.user_id
    click_on "Create Inboc"

    assert_text "Inboc was successfully created"
    click_on "Back"
  end

  test "updating a Inboc" do
    visit inbocs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @inboc.content
    fill_in "Title", with: @inboc.title
    fill_in "User", with: @inboc.user_id
    click_on "Update Inboc"

    assert_text "Inboc was successfully updated"
    click_on "Back"
  end

  test "destroying a Inboc" do
    visit inbocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inboc was successfully destroyed"
  end
end
