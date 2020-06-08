# frozen_string_literal: true

module Users
  class RegistrationsController < DeviseTokenAuth::RegistrationsController
    protected

    def sign_up_params
      params.permit(:email, :password, :first_name, :last_name)
    end
  end
end
