require 'test_helper'

class ApprovingStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @approving_status = approving_statuses(:one)
  end

  test "should get index" do
    get approving_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_approving_status_url
    assert_response :success
  end

  test "should create approving_status" do
    assert_difference('ApprovingStatus.count') do
      post approving_statuses_url, params: { approving_status: { edited_by: @approving_status.edited_by, name: @approving_status.name, note: @approving_status.note } }
    end

    assert_redirected_to approving_status_url(ApprovingStatus.last)
  end

  test "should show approving_status" do
    get approving_status_url(@approving_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_approving_status_url(@approving_status)
    assert_response :success
  end

  test "should update approving_status" do
    patch approving_status_url(@approving_status), params: { approving_status: { edited_by: @approving_status.edited_by, name: @approving_status.name, note: @approving_status.note } }
    assert_redirected_to approving_status_url(@approving_status)
  end

  test "should destroy approving_status" do
    assert_difference('ApprovingStatus.count', -1) do
      delete approving_status_url(@approving_status)
    end

    assert_redirected_to approving_statuses_url
  end
end
