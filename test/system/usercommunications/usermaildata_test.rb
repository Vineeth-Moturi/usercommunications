require "application_system_test_case"

module Usercommunications
  class UsermaildataTest < ApplicationSystemTestCase
    setup do
      @usermaildatum = usercommunications_usermaildata(:one)
    end

    test "visiting the index" do
      visit usermaildata_url
      assert_selector "h1", text: "Usermaildata"
    end

    test "creating a Usermaildatum" do
      visit usermaildata_url
      click_on "New Usermaildatum"

      fill_in "Content", with: @usermaildatum.content
      fill_in "Useremail", with: @usermaildatum.useremail
      fill_in "Username", with: @usermaildatum.username
      click_on "Create Usermaildatum"

      assert_text "Usermaildatum was successfully created"
      click_on "Back"
    end

    test "updating a Usermaildatum" do
      visit usermaildata_url
      click_on "Edit", match: :first

      fill_in "Content", with: @usermaildatum.content
      fill_in "Useremail", with: @usermaildatum.useremail
      fill_in "Username", with: @usermaildatum.username
      click_on "Update Usermaildatum"

      assert_text "Usermaildatum was successfully updated"
      click_on "Back"
    end

    test "destroying a Usermaildatum" do
      visit usermaildata_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Usermaildatum was successfully destroyed"
    end
  end
end
