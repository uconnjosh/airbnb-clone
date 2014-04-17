class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  after_create :send_welcome_message

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :properties
  validates :name, :presence => true
  validates :bio, :presence => true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  def send_welcome_message
    UserMailer.signup_confirmation(self).deliver
  end

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
