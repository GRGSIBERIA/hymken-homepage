require 'test_helper'

class NowAssignsControllerTest < ActionController::TestCase
  setup do
    @now_assign = now_assigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:now_assigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create now_assign" do
    assert_difference('NowAssign.count') do
      post :create, now_assign: { student_id: @now_assign.student_id }
    end

    assert_redirected_to now_assign_path(assigns(:now_assign))
  end

  test "should show now_assign" do
    get :show, id: @now_assign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @now_assign
    assert_response :success
  end

  test "should update now_assign" do
    patch :update, id: @now_assign, now_assign: { student_id: @now_assign.student_id }
    assert_redirected_to now_assign_path(assigns(:now_assign))
  end

  test "should destroy now_assign" do
    assert_difference('NowAssign.count', -1) do
      delete :destroy, id: @now_assign
    end

    assert_redirected_to now_assigns_path
  end
end
