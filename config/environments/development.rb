Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.eager_load = false
  config.consider_all_requests_local = true
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.cache_classes = false
  config.serve_static_assets = true
  config.assets.enabled = false
  config.active_support.deprecation = :log
  config.log_level = :debug
  config.active_record.migration_error = :page_load
end
