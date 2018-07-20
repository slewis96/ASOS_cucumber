require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require_relative '../../lib/ASOS_site.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.ignore_hidden_elements = false
  config.default_driver = :chrome
  config.match = :prefer_exact
  config.app_host = "http://www.asos.com"
end

World(ASOSSite)
