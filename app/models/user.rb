class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts # user can have many posts
  
  validates_uniqueness_of :email
  validates_length_of :email, :maximum => 100
  
end
