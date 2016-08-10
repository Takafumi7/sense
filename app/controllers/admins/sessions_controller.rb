class Admins::SessionsController < Devise::SessionsController
  def create
    @admin = Admin.new(admin_params)
  end

  def admin_params
    params.require(:admin).permit(:name, :email)
  end
end
