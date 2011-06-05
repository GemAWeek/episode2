require 'test_helper'
require 'minitest/spec'

describe Post do
  before do
    @post = Post.new
  end

  it "should create a Post given valid attributes" do
    @post.title = "My First Post"
    @post.body = "Post body"
    assert @post.save
  end
end
