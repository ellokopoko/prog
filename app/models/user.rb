class User < ActiveRecord::Base
<<<<<<< HEAD
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :projects
  has_many :tasks
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
>>>>>>> b5730778bc5778736634b4dd4e87e4b70d38d917
end
