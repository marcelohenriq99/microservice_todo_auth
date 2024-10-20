module Users
  class RegistrationsController < Devise::RegistrationsController
    def create
      build_resource(sign_up_params)

      if resource.save
        render json: { message: "User created successfully", user: resource }, status: :created
      else
        render json: { errors: resource.errors }, status: :unprocessable_entity
      end
    end

    private

    def sign_up_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
