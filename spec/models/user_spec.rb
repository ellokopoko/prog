require 'rails_helper'

RSpec.describe User, :type => :model do
  
  it "has a valid factory" do
     expect(FactoryGirl.build(:user)).to be_valid
  end

  it {should respond_to(:login)}
  it {should respond_to(:password)}
  
  it "valid db conect" do
    is_expected.to have_and_belong_to_many(:projects)
  end

  it "valid length" do
    @user = FactoryGirl.create(:user)
    @user.login.length.should be > 3
  end
	
end
