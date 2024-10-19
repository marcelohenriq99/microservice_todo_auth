module Users
  class SessionsController < Devise::SessionsController
    private

    def respond_with(resource, _opts = {})
      render json: { message: 'Logged in successfully', user: resource }, status: :ok
    end

    def respond_to_on_destroy
      head :no_content
    end
  end
end
