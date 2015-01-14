class Project < ActiveRecord::Base
  has_many                :tasks
  has_and_belongs_to_many :users
  belongs_to              :user

  validates :name, :description, :date, presence: true
  validates :name, length: { minimum: 3 }

end
