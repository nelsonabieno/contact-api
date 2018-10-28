class ContactController < ApplicationController
  before_action :contact_params
  before_action :find_contact, only:[:show, :update, :destroy]

  def index
    @contacts = Contact.all
    render json: { contacts: @contacts }, status: :ok
  end


  def create
    email = Contact.find_by_email(contact_params['email'])
    if email
      render json: { message: 'email already exist' }, status: :conflict
    else
      @contact = Contact.new(contact_params)
      if @contact.valid?
        @contact.save
        render json: { message: 'Contact created!' }, status: :created
      else
        render json: { message: @contact.errors.full_messages }, status: :internal_server_error
      end
    end
  end

  def show
    render json: { users: @contact }, status: :ok
  end


  def update
    if @contact.update(contact_params)
      render json: { user: @contact, message: 'Contact update successfully'}, status: :ok
    else
      render json: { errors: @contact.errors.full_messages }, status: :internal_server_error
    end
  end

  def destroy
    if @contact.destroy
      render json: { message: 'Contact successfully deleted' }, status: :ok
    else
      render json: { message: @contact.errors.full_messages }, status: :internal_server_error
    end
  end

  private

  def contact_params
   params.permit(
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

  def find_contact
    @contact = Contact.find(params[:id])
    if @contact
      @contact
    else
      render json: { message: 'we couldn\'t find this contact' }, status: :not_found
    end
  end
end
