require 'capybara/rspec'
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)