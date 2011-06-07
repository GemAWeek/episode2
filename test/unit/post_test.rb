require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = Post.new(:title => "My First Post", :body => "Post body")
  end

  test "should create Post given valid attributes" do
    assert @post.save
  end
end
