require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "bob", email: "bob@fred.com")
  end
  
  test "username present" do
    @user.name = "fred"
    assert @user.valid?
  end
  
  test "username must not be blank" do
    @user.name = "  "
    assert_not @user.valid?
  end
  
  test "email present" do
    @user.email = "bob@fred.com"
    assert @user.valid?
  end
  
  test "email must not be blank" do
    @user.email = " "
    assert_not @user.valid?
  end
  
end
