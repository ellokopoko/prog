require 'rails_helper'
require_relative './user.rb'


  describe User do
  
    it "has a valid factory" do
       expect(FactoryGirl.build(:user)).to be_valid
    end
	
    #it { is_expected.to have_many(:projects).
      #with_foreign_key('owner_id') }
    #end
	
	context "validates" do
	   before(:each) do
	     @user=Factory.create(:user)
	   end
	   
	   it "is valid with valid attributes" do
	      @user.should be_valid 
	   end
	   
	   it "is invalid without login" do
	     @user.login = nil
		 @user.should_not be_valid 
	   end
	   
	   it "is invalid without email" do
	     @user.email = nil
		 @user.should_not be_valid 
	   end
	   
	    it "is invalid without password" do
	     @user.pass = nil
		 @user.should_not be_valid 
	   end
  end
