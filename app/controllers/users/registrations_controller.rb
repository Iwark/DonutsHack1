class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def build_resource(hash=nil)
    hash[:uid] = User.create_unique_string
    super
  end

  def update
    account_update_params = devise_parameter_sanitizer.sanitize(:account_update)

    @user = User.find(current_user.id)
    if @user.update_attributes(account_update_params)
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to @user
    else
      render "users/edit"
    end
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << [:name, :gender, :introduction]
  end
 
end