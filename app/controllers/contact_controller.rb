class ContactController < ApplicationController

  def index
    @contacts = Contact.all
    render json: { contacts: @contacts }, status: :ok
  end

  def new

  end

  def create
    email = Contact.find_by_email(contact_params['email'])
    if email
      render json: { message: 'email already exist' }, status: :conflict
    else
      @contact = Contact.new(contact_params)
      if @contact.valid?
        @contact.save
        render json: { message: 'contact created!' }, status: :created
      else
        render json: { message: @contact.errors.full_messages }, status: :internal_server_error
      end
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
   params.permit(
      :id,
      :email,
      :address,
      :state,
      :country,
      :invitation_medium,
      :email_status,
      :sms_status,
      :user_id
    )
  end
end
