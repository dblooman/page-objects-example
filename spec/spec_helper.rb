require 'rspec'
require 'rspec/core'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'selenium/webdriver'
require 'capybara/poltergeist'
require 'helpers/support'
require 'yaml'
require 'site_prism'

Dir.glob('./spec/helpers/*.rb').each { |file| require file }

# Load config
def config
  YAML.load(File.open("configs/#{ENV['CONFIG']}"))
end

# For local testing
Capybara.register_driver :poltergeist do |app|
  driver = Capybara::Poltergeist::Driver.new(app,
    timeout: 60,
    js_errors: false,
    window_size: [ENV['WIDTH'].to_i, 768],
    phantomjs_options: ['--ignore-ssl-errors=true']
  )

  driver
end

# For local testing
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

# Set host for URLs
Capybara.app_host = 'http://www.live.bbc.co.uk'

# Capybara setting
Capybara.default_driver = :poltergeist
Capybara.run_server = false
Capybara.default_wait_time = 30

# Make Rspec matchers available to specs
RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
  config.include Helpers

  config.after do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
