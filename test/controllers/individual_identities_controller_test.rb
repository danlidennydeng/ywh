require 'test_helper'

class IndividualIdentitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @individual_identity = individual_identities(:one)
  end

  test "should get index" do
    get individual_identities_url
    assert_response :success
  end

  test "should get new" do
    get new_individual_identity_url
    assert_response :success
  end

  test "should create individual_identity" do
    assert_difference('IndividualIdentity.count') do
      post individual_identities_url, params: { individual_identity: { fullname: @individual_identity.fullname, sex_id: @individual_identity.sex_id, user_id: @individual_identity.user_id } }
    end

    assert_redirected_to individual_identity_url(IndividualIdentity.last)
  end

  test "should show individual_identity" do
    get individual_identity_url(@individual_identity)
    assert_response :success
  end

  test "should get edit" do
    get edit_individual_identity_url(@individual_identity)
    assert_response :success
  end

  test "should update individual_identity" do
    patch individual_identity_url(@individual_identity), params: { individual_identity: { fullname: @individual_identity.fullname, sex_id: @individual_identity.sex_id, user_id: @individual_identity.user_id } }
    assert_redirected_to individual_identity_url(@individual_identity)
  end

  test "should destroy individual_identity" do
    assert_difference('IndividualIdentity.count', -1) do
      delete individual_identity_url(@individual_identity)
    end

    assert_redirected_to individual_identities_url
  end
end
