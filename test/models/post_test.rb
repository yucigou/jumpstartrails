require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should not save post without title" do
    post = Post.new
    assert !post.save
  end  

  test "post values should not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:blurb].any?
    assert post.errors[:body].any?
  end  
  
  test "blurb should be a string" do
    post = Post.new(title: posts(:one).title,
                    blurb: posts(:one).blurb,
                    body: "Body? Whose?")
    
    assert post.title.kind_of? String 
  end  
end
