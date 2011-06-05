require 'test_helper'
require 'minitest/spec'

class PostsControllerTest < ActionController::TestCase
  tests PostsController

  before do
    @post = posts(:one)
  end

  test "should be successful" do
    get :index
    assert_response :success
  end

  test "should list posts" do
    get :index
    assigns(:posts).wont_be_nil
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    post :create, :post => @post.attributes
    Post.count.wont_be_nil
  end

  test "should redirect to the post after create" do
    post :create, :post => @post.attributes
    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, :id => @post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post.to_param
    assert_response :success
  end

  test "should update post" do
    put :update, :id => @post.to_param, :post => @post.attributes
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, :id => @post.to_param
    end

    assert_redirected_to posts_path
  end
end
