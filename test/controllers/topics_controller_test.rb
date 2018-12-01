require 'test_helper'

class TopicsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @topic = Topic.new(name: "first topic", description: "This is my first topic entry")
  end
  
  test "should get a new valid blog" do
    assert @topic.valid?
  end
  
  test "TopicName should be present" do
    @topic.name = ""
    assert_not @topic.valid?
  end
  
   test "TopicDescription should be present" do
    @topic.description = ""
    assert_not @topic.valid?
  end
  
  test "TopicName shouldn't be less than 5 characters" do
    @topic.name = "a" * 3
    assert_not @topic.valid?
  end
  
  test "TopicDescription should not be more than 250 characters" do
    @topic.description = "a" * 251
    assert_not @topic.valid?
  end
  
  
end