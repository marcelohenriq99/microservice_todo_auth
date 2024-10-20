# Adding devise methods to user model
Rails.application.config.to_prepare do
  MicroserviceTodoCore::Models::User.class_eval do
    devise :database_authenticatable,
           :registerable,
           :rememberable,
           :recoverable,
           :jwt_authenticatable,
           jwt_revocation_strategy: MicroserviceTodoCore::Models::JwtDenylist

    def generate_jwt
      JWT.encode(
        {
          sub: id,
          scp: "user",
          iat: DateTime.now.to_i,
          exp: 24.hours.from_now.to_i,
          jti: SecureRandom.uuid,

        },
        Rails.application.credentials.devise_jwt_secret
      )
    end
  end
end
