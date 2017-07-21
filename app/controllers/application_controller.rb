class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   protected

def confirm_logged_in
    unless session[:id]
        flash[:notice] = "Please log in"
        redirect_to :login
        return false
    else
        return true
    end

end
skip_before_action :verify_authenticity_token
def after_sign_up_path_for(resource_or_scope)
  "/people/sign_in"
end
def after_sign_out_path_for(resource_or_scope)
  "/people/sign_in"
end

end