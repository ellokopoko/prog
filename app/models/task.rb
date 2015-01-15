class Task < ActiveRecord::Base
  has_many :comments
  belongs_to :project
  belongs_to :assignee, class_name: User
  
  validates :name, :description, :date, presence: true

end
