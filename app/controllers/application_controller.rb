class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

 # before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :moile, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :mobile, :email, :password, :current_password) }
        end 

        def after_sign_in_path_for(resource)
       
            if resource.role == Customer
              root_path
            elsif resource.role == Admin
              root_path 
            else
              root_path
            end
        end
end
