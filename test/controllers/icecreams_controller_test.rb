require 'test_helper'

class IcecreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icecream = icecreams(:one)
  end

  test "should get index" do
    get icecreams_url
    assert_response :success
  end

  test "should get new" do
    get new_icecream_url
    assert_response :success
  end

  test "should create icecream" do
    assert_difference('Icecream.count') do
      post icecreams_url, params: { icecream: { count: @icecream.count, flavor: @icecream.flavor, name: @icecream.name, new_account: @icecream.new_account, size: @icecream.size } }
    end

    assert_redirected_to icecream_url(Icecream.last)
  end

  test "should show icecream" do
    get icecream_url(@icecream)
    assert_response :success
  end

  test "should get edit" do
    get edit_icecream_url(@icecream)
    assert_response :success
  end

  test "should update icecream" do
    patch icecream_url(@icecream), params: { icecream: { count: @icecream.count, flavor: @icecream.flavor, name: @icecream.name, new_account: @icecream.new_account, size: @icecream.size } }
    assert_redirected_to icecream_url(@icecream)
  end

  test "should destroy icecream" do
    assert_difference('Icecream.count', -1) do
      delete icecream_url(@icecream)
    end

    assert_redirected_to icecreams_url
  end
end
