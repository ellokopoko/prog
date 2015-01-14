FactoryGirl.define do
  
  factory :task do
    name "task_name"
    description "task_description"
    date "2014-12-23"
    deadline_date "2014-12-23"
    status false
  end

end
