OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['TERPX_FB_LOGIN'], ENV['TERPX_FB_LOGIN_SECRET']
end
