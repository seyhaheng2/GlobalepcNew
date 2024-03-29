require 'test_helper'

class AdvertisesControllerTest < ActionController::TestCase
  setup do
    @advertise = advertises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertise" do
    assert_difference('Advertise.count') do
      post :create, advertise: { category_id: @advertise.category_id, image: @advertise.image, name: @advertise.name }
    end

    assert_redirected_to advertise_path(assigns(:advertise))
  end

  test "should show advertise" do
    get :show, id: @advertise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertise
    assert_response :success
  end

  test "should update advertise" do
    patch :update, id: @advertise, advertise: { category_id: @advertise.category_id, image: @advertise.image, name: @advertise.name }
    assert_redirected_to advertise_path(assigns(:advertise))
  end

  test "should destroy advertise" do
    assert_difference('Advertise.count', -1) do
      delete :destroy, id: @advertise
    end

    assert_redirected_to advertises_path
  end
end
