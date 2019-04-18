class RegistrationsController < Devise::RegistrationsController
  # modifies devise's sign_up_params &&
  # account_update_params
  # to accept :name attribute
  private

  def sign_up_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit( :name, :email, :password, :password_confirmation, :current_password )
  end
  
end