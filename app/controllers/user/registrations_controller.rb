class User::RegistrationsController < Devise::RegistrationsController ## inherites from devise registrations
  before_filter :configure_permitted_parameters
  
  protected
  ## need to configure for edit and sign up
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name)
    devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name)
  end
  
end