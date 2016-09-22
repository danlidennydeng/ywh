require 'test_helper'

class ResidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residence = residences(:one)
  end

  test "should get index" do
    get residences_url
    assert_response :success
  end

  test "should get new" do
    get new_residence_url
    assert_response :success
  end

  test "should create residence" do
    assert_difference('Residence.count') do
      post residences_url, params: { residence: { approving_status_id: @residence.approving_status_id, area: @residence.area, edited_by: @residence.edited_by, note: @residence.note, unit_number: @residence.unit_number, user_id: @residence.user_id, xiaoqu_id: @residence.xiaoqu_id } }
    end

    assert_redirected_to residence_url(Residence.last)
  end

  test "should show residence" do
    get residence_url(@residence)
    assert_response :success
  end

  test "should get edit" do
    get edit_residence_url(@residence)
    assert_response :success
  end

  test "should update residence" do
    patch residence_url(@residence), params: { residence: { approving_status_id: @residence.approving_status_id, area: @residence.area, edited_by: @residence.edited_by, note: @residence.note, unit_number: @residence.unit_number, user_id: @residence.user_id, xiaoqu_id: @residence.xiaoqu_id } }
    assert_redirected_to residence_url(@residence)
  end

  test "should destroy residence" do
    assert_difference('Residence.count', -1) do
      delete residence_url(@residence)
    end

    assert_redirected_to residences_url
  end
end
