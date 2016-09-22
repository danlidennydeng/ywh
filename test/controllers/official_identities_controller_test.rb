require 'test_helper'

class OfficialIdentitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @official_identity = official_identities(:one)
  end

  test "should get index" do
    get official_identities_url
    assert_response :success
  end

  test "should get new" do
    get new_official_identity_url
    assert_response :success
  end

  test "should create official_identity" do
    assert_difference('OfficialIdentity.count') do
      post official_identities_url, params: { official_identity: { edited_by: @official_identity.edited_by, name: @official_identity.name, note: @official_identity.note, user_id: @official_identity.user_id } }
    end

    assert_redirected_to official_identity_url(OfficialIdentity.last)
  end

  test "should show official_identity" do
    get official_identity_url(@official_identity)
    assert_response :success
  end

  test "should get edit" do
    get edit_official_identity_url(@official_identity)
    assert_response :success
  end

  test "should update official_identity" do
    patch official_identity_url(@official_identity), params: { official_identity: { edited_by: @official_identity.edited_by, name: @official_identity.name, note: @official_identity.note, user_id: @official_identity.user_id } }
    assert_redirected_to official_identity_url(@official_identity)
  end

  test "should destroy official_identity" do
    assert_difference('OfficialIdentity.count', -1) do
      delete official_identity_url(@official_identity)
    end

    assert_redirected_to official_identities_url
  end
end
