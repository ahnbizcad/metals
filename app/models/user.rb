class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable, :rememberable, 
  devise :database_authenticatable, :registerable, :validatable, :timeoutable, :recoverable, :trackable
end
