require 'rails_helper'

describe User do
  
  it "has a valid factory" do
     expect(FactoryGirl.build(:user)).to be_valid
  end

  it {should respond_to(:login)}
  it {should respond_to(:password)}

  it "valid length" do
    @user = FactoryGirl.create(:user)
    @user.login.length.should be > 3
  end
	
end
