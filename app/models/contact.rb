class Contact < ApplicationRecord
  belongs_to :user

  validates :user_id, presence:true
  validates :email, presence:true
  validates :address, presence:true, length: {minimum:5, maximum: 500}
  validates :state, presence:true, length: {minimum:3, maximum: 10}
  validates :country, presence:true
  validates :invitation_medium, presence:true
  validates :email_status, presence:true
  validates :sms_status, presence:true
end
