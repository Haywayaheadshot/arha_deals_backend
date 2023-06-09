class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  include Devise::JWT::RevocationStrategies::JTIMatcher
  has_one :cart
  # Add an "admin" attribute
  attr_accessor :admin

  def admin?
    admin == true
  end
end
