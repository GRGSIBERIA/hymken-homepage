require 'test_helper'

class GraduationThesesControllerTest < ActionController::TestCase
  setup do
    @graduation_thesis = graduation_theses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graduation_theses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graduation_thesis" do
    assert_difference('GraduationThesis.count') do
      post :create, graduation_thesis: { name: @graduation_thesis.name, past_assign_id: @graduation_thesis.past_assign_id, view_hash: @graduation_thesis.view_hash }
    end

    assert_redirected_to graduation_thesis_path(assigns(:graduation_thesis))
  end

  test "should show graduation_thesis" do
    get :show, id: @graduation_thesis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graduation_thesis
    assert_response :success
  end

  test "should update graduation_thesis" do
    patch :update, id: @graduation_thesis, graduation_thesis: { name: @graduation_thesis.name, past_assign_id: @graduation_thesis.past_assign_id, view_hash: @graduation_thesis.view_hash }
    assert_redirected_to graduation_thesis_path(assigns(:graduation_thesis))
  end

  test "should destroy graduation_thesis" do
    assert_difference('GraduationThesis.count', -1) do
      delete :destroy, id: @graduation_thesis
    end

    assert_redirected_to graduation_theses_path
  end
end
