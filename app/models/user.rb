class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  has_many :contacts
  #
  # def password
  #   @password ||= Passwprd.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = BCrypt::Password.create(new_password)
  #
  #   self.password_digest = @password
  # end
end
