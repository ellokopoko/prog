require 'rails_helper'
require_relative './task.rb'

RSpec.describe Task, :type => :model do
 
describe Task do
    context "validates" do
	   before(:each) do
	     @task=Factory.create(:task)
	   end
	   
	   it "is valid with valid attributes" do
	      @task.should be_valid 
	   end
	   
	   it "is invalid without status" do
	     @task.status = nil
		 @task.should_not be_valid 
	   end
	   
	   it "is invalid without date" do
	     @task.date = nil
		 @task.should_not be_valid
	   end
	   
	   it "is invalid without name" do
	     @task.name = nil
		 @task.should_not be_valid
	   end
	   
	   it "is invalid without description" do
	     @task.desc = nil
		 @task.should_not be_valid
	   end
	end
end 
end
