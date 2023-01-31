class User < ApplicationRecord

  has_secure_password

  validates_uniqueness_of :email

  validates_length_of :password, :minimum => 5
  
  def self.authenticate_with_credentials(email, password)
    email = email.downcase.strip

    @user = User.find_by_email(email)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end
  
end
