class User < ApplicationRecord
  # TODO EMAIL VALIDATION
  # TODO USER VALIDATION
  has_secure_password
  belongs_to :role
  has_many :contacts, dependent: :delete_all
end
