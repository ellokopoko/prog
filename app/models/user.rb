class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :projects
  has_many                :projects
  has_many                :tasks
  has_many                :comments


  #validates :login, :password, :email, presence: true
  validates :password, :email, presence: true

  validates :password, length: { in: 6..18 }
  #validates :login, length: { minimum: 3 }

  devise                  :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
