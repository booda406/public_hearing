OmniAuth.config.logger = Rails.logger
     
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '550590015049978', 'a9acc9694aa90ece2d15b28c292f30f8', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end