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
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end  
  
  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name:auth.extra.raw_info.name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           oauth_token:auth.credentials.token,
                           oauth_expires_at:Time.at(auth.credentials.expires_at),
                           password:Devise.friendly_token[0,20]
                           )
    end
    user
  end
    
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
end
