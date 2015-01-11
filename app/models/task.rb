class Task < ActiveRecord::Base
  has_many :comments
  belongs_to :project
  
  validates :name, :description, :date, presence: true

end
