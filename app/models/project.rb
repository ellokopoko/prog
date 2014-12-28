class Project < ActiveRecord::Base
  has_many  :tasks
  belong_to :user
end
