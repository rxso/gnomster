class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :firstname
  has_one :lastname
  has_one :username

  has_many :places
  has_many :comments
  has_many :photos

end
