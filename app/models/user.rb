class User < ActiveRecord::Base

  has_and_belongs_to_many :groups
  has_many :roles, :as => :roleable

  validates_presence_of :nickname
  validates_confirmation_of :password, :if => :password_changed?

end
