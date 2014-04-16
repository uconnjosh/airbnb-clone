class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties

  validates :name, :presence => true
  validates :bio, :presence => true

   def greeting
    if Time.now.hour >= 17
      return "Good Evening"
    elsif Time.now.hour > 12
      return "Good Afternoon"
    else
      return "Good Morning"
    end
  end
end
