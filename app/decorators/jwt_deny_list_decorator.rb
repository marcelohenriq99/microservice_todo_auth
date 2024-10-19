# Adding devise methods to jwt model
MicroserviceTodoCore::Models::JwtDenylist.class_eval do
  include Devise::JWT::RevocationStrategies::Denylist
end
