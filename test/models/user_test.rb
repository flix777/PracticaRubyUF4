require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
 @user = User.new(email: "vvv@vvv.vvv", password: "vvvvvv", password_confirmation:"vvvvvv")
end


   test "Objecta User Creat" do
assert @user.valid?
  end

end
