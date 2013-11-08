class User < ActiveRecord::Base
  include TheComments::User
  
  has_many :companies
  
  def admin?
    self == User.first
  end
  
  def comments_admin?
    admin?
  end
  
  def comments_moderator? comment
    id == comment.holder_id
  end    
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
end
