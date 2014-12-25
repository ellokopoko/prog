#/spec/models/comment_spec.rb 
require 'rails_helper'
require_relative './comment.rb'


describe Comment do
    context "validates" do
	   before(:each) do
	     @comment=Factory.create(:comment)
	   end
	   
	   it "is valid with valid attributes" do
	      @comment.should be_valid 
	   end
	   
	   it "is invalid without text" do
	     @comment.text = nil
		 @comment.should_not be_valid 
	   end
	   
	   it "is invalid without date" do
	     @comment.date = nil
		 @comment.should_not be_valid
	   end
	end
end 

=begin
RSpec.describe Comment, :type => :model do
  
  Class Comment < ActiveRecord::Base
  validates :text, :presence => true   
  validates :date, :presence => true

   #belongs_to :task
   #has_many : participate
  
end
=end	
