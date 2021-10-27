require "test_helper"

module Usercommunications
  class UsermaildataControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @usermaildatum = usercommunications_usermaildata(:one)
    end

    test "should get index" do
      get usermaildata_url
      assert_response :success
    end

    test "should get new" do
      get new_usermaildatum_url
      assert_response :success
    end

    test "should create usermaildatum" do
      assert_difference('Usermaildatum.count') do
        post usermaildata_url, params: { usermaildatum: { content: @usermaildatum.content, useremail: @usermaildatum.useremail, username: @usermaildatum.username } }
      end

      assert_redirected_to usermaildatum_url(Usermaildatum.last)
    end

    test "should show usermaildatum" do
      get usermaildatum_url(@usermaildatum)
      assert_response :success
    end

    test "should get edit" do
      get edit_usermaildatum_url(@usermaildatum)
      assert_response :success
    end

    test "should update usermaildatum" do
      patch usermaildatum_url(@usermaildatum), params: { usermaildatum: { content: @usermaildatum.content, useremail: @usermaildatum.useremail, username: @usermaildatum.username } }
      assert_redirected_to usermaildatum_url(@usermaildatum)
    end

    test "should destroy usermaildatum" do
      assert_difference('Usermaildatum.count', -1) do
        delete usermaildatum_url(@usermaildatum)
      end

      assert_redirected_to usermaildata_url
    end
  end
end
