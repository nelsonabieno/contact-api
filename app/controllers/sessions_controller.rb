class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:create]

  def create
    @user = User.find_by(email: auth_params[:email])
    if @user
      @user.authenticate(auth_params[:password])
      jwt = Auth.issue({ user: @user.id })
      @user.update({ status: true })
      render json: { jwt: jwt, message: 'You\'re in!' }
    else
      render json: { user: @user, message: 'Invalid login details' }, status: :bad_request
    end
  end

  def destroy
    if @current_user
       user = set_user
       user.update({ status: false })
       @current_user = nil
       render json: { message: 'You\'re out!' }, status: :no_content
    else
      render json: { message: 'record not found' }, status: :unauthorized
    end
  end

  private
  def auth_params
    params.permit(:email, :password)
  end

  def set_user
    User.find(@current_user.id) if  @current_user.id
  end

end
