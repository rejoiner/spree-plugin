if defined?(Spree::AppConfiguration)
  Spree::AppConfiguration.class_eval do
    preference :rejoiner_active, :boolean, default: false
    preference :rejoiner_site_id, :string
    preference :rejoiner_domain, :string
    preference :rejoiner_api_key, :string
  end
end
