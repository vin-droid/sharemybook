class RegistrationsController < Devise::RegistrationsController
	 private

  def sign_up_params
    params.require(:user).permit(:f_name, :username, :l_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:f_name, :username, :l_name, :email , :password_confirmation, :current_password)
  end
end
