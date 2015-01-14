class Comment < ActiveRecord::Base
  belongs_to :task
  belongs_to :user

  validates :text, presence: true
  validates :text, length: { in: 6..1000 }

end
