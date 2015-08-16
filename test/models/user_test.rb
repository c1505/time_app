require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @user = User.new(name: "bob", email: "bob@fred.com", password: "foobar",
                     password_confirmation: "foobar")
  end
  
  test "password present" do
    @user.password = @user.password_confirmation = "   "
    assert_not @user.valid?
  end
  
  test "password at least 6 characters" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
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
  
  test "email must be less than 151 characters" do
    @user.email = "a" * 151
    assert_not @user.valid?
  end
  
  test "name must be less than 51 characters" do 
    @user.name = "a" * 51
    assert_not @user.valid?
  end
  
    test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
end
