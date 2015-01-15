require 'rails_helper'

describe Comment do
    
  it "has a valid factory" do
     expect(FactoryGirl.build(:comment)).to be_valid
  end

  it {should respond_to(:text)}

  it "valid length" do
    @comment = FactoryGirl.create(:comment)
    @comment.text.length.should be > 6
    @comment.text.length.should be < 1000
  end

  it "valid db conect task" do
    is_expected.to belong_to(:task)
  end

  it "valid db conect user" do
    is_expected.to belong_to(:user)
  end

end 
