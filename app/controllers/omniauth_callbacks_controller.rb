class OmniauthCallbacksController < Devise::OmniauthCallbacksController


def all
  # binding.pry
  # raise request.env["omniauth.auth"].to_yaml

  @user = User.find_for_oauth(env["omniauth.auth"], current_user)

        if @user.persisted?
          sign_in_and_redirect @user, event: :authentication
          binding.pry
          set_flash_message(:notice, :success, kind: env["omniauth.auth"]["provider"].capitalize) if is_navigational_format?
        else
          session["devise.#{provider}_data"] = env["omniauth.auth"]
          redirect_to new_user_registration_url
        end
end

alias_method :facebook, :all
alias_method :google_oauth2, :all
alias_method :linkedin, :all

end
