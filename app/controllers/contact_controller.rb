class ContactController < ApplicationController
  before_action :set_contact, only: [:show,:update, :destroy]

  def index
    @contacts = Contact.all
    @contacts.to_json
  end

  def new

  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save!
      response.status(:ok)
    else
      response.send.status(500)
    end

  end

  def show

  end


  def update

  end

  def destroy

  end

  private

  def contact_params
   @contact_params = params.permit(
      :email,
      :address,
      :state,
      :country,
      :invitation_medium,
      :email_status,
      :sms_status
    )
  end

end
