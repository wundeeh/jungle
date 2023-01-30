class User < ApplicationRecord

  has_secure_password

  validates_uniqueness_of :email

  validates_length_of :password, :minimum => 5
  
end
