class ApplicationController < ActionController::Base
    respond_to :html, :json
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end

    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_path, alert: "Accès interdit: Vous n'avez pas les droits"
    end

end
