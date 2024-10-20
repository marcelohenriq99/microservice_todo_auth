# Adding devise methods to jwt model
Rails.application.config.to_prepare do
  MicroserviceTodoCore::Models::JwtDenylist.class_eval do
    include Devise::JWT::RevocationStrategies::Denylist
  end
end
