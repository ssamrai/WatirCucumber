require "#{File.dirname(__FILE__)}/../config/main.rb" #including main.rb starts the process

Given(/^that I am on the AIRMILES site$/) do
  $browser.url == $base_url
end
