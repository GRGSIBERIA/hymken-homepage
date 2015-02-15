require 'test_helper'

class PostThesesControllerTest < ActionController::TestCase
  setup do
    @post_thesis = post_theses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_theses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_thesis" do
    assert_difference('PostThesis.count') do
      post :create, post_thesis: { name: @post_thesis.name, past_assign_id: @post_thesis.past_assign_id, quotation: @post_thesis.quotation, view_hash: @post_thesis.view_hash }
    end

    assert_redirected_to post_thesis_path(assigns(:post_thesis))
  end

  test "should show post_thesis" do
    get :show, id: @post_thesis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_thesis
    assert_response :success
  end

  test "should update post_thesis" do
    patch :update, id: @post_thesis, post_thesis: { name: @post_thesis.name, past_assign_id: @post_thesis.past_assign_id, quotation: @post_thesis.quotation, view_hash: @post_thesis.view_hash }
    assert_redirected_to post_thesis_path(assigns(:post_thesis))
  end

  test "should destroy post_thesis" do
    assert_difference('PostThesis.count', -1) do
      delete :destroy, id: @post_thesis
    end

    assert_redirected_to post_theses_path
  end
end
