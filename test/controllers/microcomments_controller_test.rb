require 'test_helper'

class MicrocommentsControllerTest < ActionController::TestCase
  setup do
    @microcomment = microcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microcomment" do
    assert_difference('Microcomment.count') do
      post :create, microcomment: { status: @microcomment.status, user_id: @microcomment.user_id }
    end

    assert_redirected_to microcomment_path(assigns(:microcomment))
  end

  test "should show microcomment" do
    get :show, id: @microcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microcomment
    assert_response :success
  end

  test "should update microcomment" do
    patch :update, id: @microcomment, microcomment: { status: @microcomment.status, user_id: @microcomment.user_id }
    assert_redirected_to microcomment_path(assigns(:microcomment))
  end

  test "should destroy microcomment" do
    assert_difference('Microcomment.count', -1) do
      delete :destroy, id: @microcomment
    end

    assert_redirected_to microcomments_path
  end
end
