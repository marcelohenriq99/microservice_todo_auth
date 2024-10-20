class ApplicationController < ActionController::API

  private

  def authenticate_user!
    token = request.headers["Authorization"]&.split(" ")&.last
    raise "Missing token!" if token.blank?

    decoded_token = decode_token(token)
    raise "Token has been revoked" if token_revoked?(decoded_token["jti"])

    @current_user = MicroserviceTodoCore::Models::User.find(decoded_token["sub"])
  rescue JWT::DecodeError
    render_unauthorized("Invalid token")
  rescue ActiveRecord::RecordNotFound
    render_unauthorized("User not found")
  rescue StandardError => e
    render_unauthorized(e.message)
  end

  def decode_token(token)
    JWT.decode(token, Rails.application.credentials.devise_jwt_secret, true, { algorithm: "HS256" })[0]
  end

  def token_revoked?(jti)
    MicroserviceTodoCore::Models::JwtDenylist.exists?(jti: jti)
  end

  def render_unauthorized(message)
    render json: { error: message }, status: :unauthorized
  end
end
