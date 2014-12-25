require 'rails_helper'
require_relative 'project.rb'

RSpec.describe Project, :type => :model do

  describe Project do

    it "has a valid factory" do
      expect(FactoryGirl.build(:project)).to be_valid
    end
	
      #it { is_expected belong_to(:participate).class_name(Project) }
    #end
  
   context "validates" do
	   before(:each) do
	     @project=Factory.create(:project)
	   end
	   
	   it "is valid with valid attributes" do
	      @project.should be_valid 
	   end
	   
	   it "is invalid without describe" do
	     @project.desc = nil
		 @project.should_not be_valid 
	   end
	   
	   it "is invalid without name" do
	     @project.name = nil
		 @project.should_not be_valid 
	   end
	   
	   it "is invalid without date" do
	     @project.date = nil
		 @project.should_not be_valid
	   end
	end

 end
