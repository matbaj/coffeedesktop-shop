class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:provider, :uid
  # attr_accessible :title, :body
  def self.find_for_github_oauth(access_token, signed_in_resource=nil)
	  user_info = access_token['info']
	  # Find the existing user or create a new one.
	  #  Omit the password-generation code shown in the example at
	  #  https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview
	  #  because we're intending to use OmniAuth only, so
	  #  presumably don't need a password.
	  User.find_by_email( user_info["email"] ) ||
	  User.create( :email => user_info["email"]).save(:validate => false)

  end
  has_many :coffeecups
end
