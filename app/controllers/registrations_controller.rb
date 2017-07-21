class RegistrationsController < Devise::RegistrationsController
	def sign_up_params
      params.require(:person).permit(:email, :password, :password_confirmation)
    end
end
