OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '416762338450410', '974dba4bff3bb345477cecabc935b091'
end