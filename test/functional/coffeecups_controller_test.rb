require 'test_helper'

class CoffeecupsControllerTest < ActionController::TestCase
  setup do
    @coffeecup = coffeecups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffeecups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coffeecup" do
    assert_difference('Coffeecup.count') do
      post :create, coffeecup: { about: @coffeecup.about, img: @coffeecup.img, short: @coffeecup.short, title: @coffeecup.title, url: @coffeecup.url, user_id: @coffeecup.user_id }
    end

    assert_redirected_to coffeecup_path(assigns(:coffeecup))
  end

  test "should show coffeecup" do
    get :show, id: @coffeecup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coffeecup
    assert_response :success
  end

  test "should update coffeecup" do
    put :update, id: @coffeecup, coffeecup: { about: @coffeecup.about, img: @coffeecup.img, short: @coffeecup.short, title: @coffeecup.title, url: @coffeecup.url, user_id: @coffeecup.user_id }
    assert_redirected_to coffeecup_path(assigns(:coffeecup))
  end

  test "should destroy coffeecup" do
    assert_difference('Coffeecup.count', -1) do
      delete :destroy, id: @coffeecup
    end

    assert_redirected_to coffeecups_path
  end
end
