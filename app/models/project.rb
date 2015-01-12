class Project < ActiveRecord::Base
  has_many                :tasks
  has_and_belongs_to_many :users
  belongs_to              :owner, class_name: User

  validates :name, :description, :date, presence: true
  validates :name, length: { minimum: 3 }

  accepts_nested_attributes_for :tasks, allow_destroy: true

end
