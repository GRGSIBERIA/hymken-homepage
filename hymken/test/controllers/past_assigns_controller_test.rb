require 'test_helper'

class PastAssignsControllerTest < ActionController::TestCase
  setup do
    @past_assign = past_assigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:past_assigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create past_assign" do
    assert_difference('PastAssign.count') do
      post :create, past_assign: { student_id: @past_assign.student_id, year: @past_assign.year }
    end

    assert_redirected_to past_assign_path(assigns(:past_assign))
  end

  test "should show past_assign" do
    get :show, id: @past_assign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @past_assign
    assert_response :success
  end

  test "should update past_assign" do
    patch :update, id: @past_assign, past_assign: { student_id: @past_assign.student_id, year: @past_assign.year }
    assert_redirected_to past_assign_path(assigns(:past_assign))
  end

  test "should destroy past_assign" do
    assert_difference('PastAssign.count', -1) do
      delete :destroy, id: @past_assign
    end

    assert_redirected_to past_assigns_path
  end
end
