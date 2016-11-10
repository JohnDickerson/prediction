OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'YOUR_PUBLIC_ID', 'YOUR_PRIVATE_ID'
end
