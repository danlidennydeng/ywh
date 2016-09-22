require 'test_helper'

class XiaoqusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xiaoqu = xiaoqus(:one)
  end

  test "should get index" do
    get xiaoqus_url
    assert_response :success
  end

  test "should get new" do
    get new_xiaoqu_url
    assert_response :success
  end

  test "should create xiaoqu" do
    assert_difference('Xiaoqu.count') do
      post xiaoqus_url, params: { xiaoqu: { address: @xiaoqu.address, edited_by: @xiaoqu.edited_by, name: @xiaoqu.name, note: @xiaoqu.note, populations: @xiaoqu.populations, starting_month: @xiaoqu.starting_month, starting_year: @xiaoqu.starting_year, total_units: @xiaoqu.total_units } }
    end

    assert_redirected_to xiaoqu_url(Xiaoqu.last)
  end

  test "should show xiaoqu" do
    get xiaoqu_url(@xiaoqu)
    assert_response :success
  end

  test "should get edit" do
    get edit_xiaoqu_url(@xiaoqu)
    assert_response :success
  end

  test "should update xiaoqu" do
    patch xiaoqu_url(@xiaoqu), params: { xiaoqu: { address: @xiaoqu.address, edited_by: @xiaoqu.edited_by, name: @xiaoqu.name, note: @xiaoqu.note, populations: @xiaoqu.populations, starting_month: @xiaoqu.starting_month, starting_year: @xiaoqu.starting_year, total_units: @xiaoqu.total_units } }
    assert_redirected_to xiaoqu_url(@xiaoqu)
  end

  test "should destroy xiaoqu" do
    assert_difference('Xiaoqu.count', -1) do
      delete xiaoqu_url(@xiaoqu)
    end

    assert_redirected_to xiaoqus_url
  end
end
