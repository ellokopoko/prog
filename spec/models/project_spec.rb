require 'rails_helper'

describe Project do

  it "has a valid factory" do
    expect(FactoryGirl.build(:project)).to be_valid
  end
	
  it {should respond_to(:name)}
  it {should respond_to(:description)}
  it {should respond_to(:date)}

  it "valid length" do
    @project = FactoryGirl.create(:project)
    @project.name.length.should be > 3
  end

  it "valid db conect" do
    is_expected.to have_and_belong_to_many(:users)
  end
  
end

