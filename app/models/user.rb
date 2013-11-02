class User < ActiveRecord::Base

  validates :password,  presence: true,
			confirmation: true


  def has_password?(submitted_password)
	submitted_password == self.password
  end

  def self.authenticate(email, submitted_password)
	user = find_by_email(email)
	return nil if user.nil?
	return user if user.has_password?(submitted_password)
  end

end
