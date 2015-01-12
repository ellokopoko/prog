FactoryGirl.define do
  factory :user do
    sequence(:login) {|i| "login#{i}"} 
    password "password"
  end

end
