FactoryGirl.define do
  factory :user do
    sequence(:login) { |i| "login#{i}" }
    password "password"
    sequence(:email) { |i| "login#{i}@email.ru" }
  end

end
