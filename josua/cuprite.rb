require "capybara"
require "capybara/cuprite"
require "capybara/dsl"

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(app, window_size: [1200, 800])
end
Capybara.javascript_driver = :cuprite
Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :cuprite
end

include Capybara::DSL

visit 'https://www.renuo.ch'
click_on "hamburger"
click_on "Team"
find('img[alt="Josua Schmid"]').hover
puts page.find(".name", text: "Josua Schmid")['innerHTML']
