class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def github
    @user = User.find_for_github_oauth(env["omniauth.auth"], current_user)

      flash[:notice] = I18n.t(
        "devise.omniauth_callbacks.success", :kind => "GitHub" )
      sign_in_and_redirect @user, :event => :authentication

  end

end