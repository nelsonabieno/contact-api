class RoleController < ApplicationController
  def create
    @role = Role.new(role_params)
    render json: @role, status: :created if @role.save
  end

  private
  def role_params
    params.permit(:id, :name)
  end
end
