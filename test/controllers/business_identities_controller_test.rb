require 'test_helper'

class BusinessIdentitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_identity = business_identities(:one)
  end

  test "should get index" do
    get business_identities_url
    assert_response :success
  end

  test "should get new" do
    get new_business_identity_url
    assert_response :success
  end

  test "should create business_identity" do
    assert_difference('BusinessIdentity.count') do
      post business_identities_url, params: { business_identity: { edited_by: @business_identity.edited_by, name: @business_identity.name, note: @business_identity.note, user_id: @business_identity.user_id } }
    end

    assert_redirected_to business_identity_url(BusinessIdentity.last)
  end

  test "should show business_identity" do
    get business_identity_url(@business_identity)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_identity_url(@business_identity)
    assert_response :success
  end

  test "should update business_identity" do
    patch business_identity_url(@business_identity), params: { business_identity: { edited_by: @business_identity.edited_by, name: @business_identity.name, note: @business_identity.note, user_id: @business_identity.user_id } }
    assert_redirected_to business_identity_url(@business_identity)
  end

  test "should destroy business_identity" do
    assert_difference('BusinessIdentity.count', -1) do
      delete business_identity_url(@business_identity)
    end

    assert_redirected_to business_identities_url
  end
end
