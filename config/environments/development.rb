Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Disable Rails's static asset server (Apache or nginx will already do this).
  config.serve_static_files = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Eager loading
  config.eager_load = false

  # Devise needs this to be set
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

  # proper logging in Puma
  config.logger = Logger.new(STDOUT)

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Paperclip
  Paperclip.options[:command_path] = "/usr/local/bin/"

  config.paperclip_defaults = {
    :storage => :s3,
    :bucket => "lunge",
    :s3_credentials => YAML.load_file("#{Rails.root}/config/s3.yml"),
    :s3_host_name => "s3-eu-west-1.amazonaws.com",
    :s3_endpoint => "s3-eu-west-1.amazonaws.com",
    :path => "#{Rails.env}/:class/:attachment/:id/:basename_:style.:extension"
  }

  # React.js
  config.react.variant = :development
end
