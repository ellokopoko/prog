require 'rails_helper'
 
describe Task do
  
  it "has a valid factory" do
    expect(FactoryGirl.build(:task)).to be_valid
  end
	
  it {should respond_to(:name)}
  it {should respond_to(:description)}
  it {should respond_to(:date)}

  it "valid db conect" do
    is_expected.to have_many(:comments)
  end

end
