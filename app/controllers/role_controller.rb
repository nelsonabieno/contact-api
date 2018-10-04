class RoleController < ApplicationController
  def create
    # binding.pry
    @role = Role.new(role_params)
    @role.save
    render json: @role, status: :created
  end

  private
  def role_params
    params.permit(:name)
  end
end
