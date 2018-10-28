class UserController < ApplicationController
  before_action :user_params
  before_action :find_user, only:[:show, :update, :destroy]

  def index
    @users = User.all
    render json: { users: @users }, status: :ok
  end

  def create
    if  User.find_by(email: params[:email])
      render json: { message: 'Email already exist' }, status: :conflict
    else
      @user = User.new(user_params)
      if @user.valid?
        @user.save
        render  json: { user:  @user, message: 'User successfully created' }, status: :created
      else
        render json: { errors:  @user.errors.full_messages }, status: :internal_server_error
      end
    end
  end

  def show
    render json: { users: @user }, status: :ok
  end

  def update
    if @user.update(user_params)
      render json: { user: @user, message: 'User update successfully'}, status: :ok
    else
      render json: { errors: @user.errors.full_messages }, status: :internal_server_error
    end
  end

  def destroy
    if @user.destroy
      render json: { message: 'User successfully deleted' }, status: :ok
    else
      render json: { message: @user.errors.full_messages }, status: :internal_server_error
    end
  end

  private
  def user_params
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

  def find_user
    @user = User.find(params[:id])
    if @user
      @user
    else
      render json: { message: 'we couldn\'t find this user' }, status: :not_found
    end
  end

end
