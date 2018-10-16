class User < ApplicationRecord
  # TODO EMAIL VALIDATION
  has_secure_password
  belongs_to :role
  has_many :contacts
end
