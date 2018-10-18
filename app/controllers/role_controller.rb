class RoleController < ApplicationController
  def create
    if current_user.try(:role).try(:name).to_s.strip == 'super'
      @role = Role.new(role_params)
      if @role.save
        render json: { role: @role, message: 'A new role was created' }, status: :created
      else
        render json: { message: @role.errors.full_messages }, status: :bad_request
      end
    else
      render json: { message: 'Only super admin can perform this action' }, status: :forbidden
    end
  end

  private
  def role_params
    params.permit(:name)
  end
end
