class Task < ActiveRecord::Base
  has_many :comments

  validates :name, :description, :date, :status presence: true

end
