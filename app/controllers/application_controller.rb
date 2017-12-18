class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  	  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
  end

  def after_sign_in_path_for(resource_or_scope)
   
   	movies_path	
  end
  def after_sign_out_path_for(resource_or_scope)
   
    	movies_path	
  end
end
