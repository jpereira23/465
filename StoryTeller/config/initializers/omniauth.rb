Rails.application.config.middleware.use OmniAuth::Builder do 
  provider :facebook, ENV['973074309397965'], ENV['fc5105b8412519db739717166e6b55e9'], scope: 'public_profile'
end
