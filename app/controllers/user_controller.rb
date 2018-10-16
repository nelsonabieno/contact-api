class UserController < ApplicationController
  before_action :users_params

  def index

  end

  def create
    if  User.find_by(email: params[:email])
      render json: { message: 'Email already exist' }, status: :conflict
    else
      @user = User.new(users_params)
      if @user.save
        render  json: { user:  @user, message: 'User successfully created' }, status: :created
      else
        render json: { errors:  @user.errors }, status: 500
      end
    end
  end

  def show

  end

  def edit

  end

  def destroy

  end

  private
  def users_params
    params.permit(
          :password,
          :phoneno,
          :role_id,
          :status,
          :email,
          :first_name,
          :last_name,
          :date_of_birth
    )
  end

end
