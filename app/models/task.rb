class Task < ActiveRecord::Base
  has_many :comments

  validates :name, :description, :date, presence: true

end
