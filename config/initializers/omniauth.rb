Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?  
  provider :twitter, "8QnV3ED6NpMh2f3PkZa6jw", "vz3LEo7xCeiEx3lI3EcLMV3VzUwJ9jkVkuh0mfh8qkA"
  provider :facebook, "220973864628106", "263601e17ddf048b0aee2c7bd1ad8e19"
  provider :identity
end