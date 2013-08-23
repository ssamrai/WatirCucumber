require "#{File.dirname(__FILE__)}/../config/main.rb" #including main.rb starts the process

Given /^I'm on home page$/ do
  $browser.url == $base_url
end
