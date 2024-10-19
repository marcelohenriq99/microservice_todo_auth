# Adding devise methods to user model
MicroserviceTodoCore::Models::User.class_eval do
  devise :database_authenticatable, :registerable, :rememberable, :recoverable, :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
end
