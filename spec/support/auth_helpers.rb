module AuthHelpers
  def login_standard_user
   before(:each) do
    User.delete_all
    @user ||= FactoryGirl.create(:user)
    sign_in @user
  end
end
end