require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

#all step definitions here
Then /^I should see working contact us link$/ do
  HomePage.contact_us
end

Given(/^I'm on houserie website$/) do
  $browser.url.should include "http://staging.houserie.com/"
end

When(/^I click on login$/) do
  $browser.link(:id,"login").click
end

Then(/^enter valid credentials$/) do
  $browser.hidden.text_field(:xpath,"//*[@id=\"user_email\"]").set("hrentalroost@yahoo.com")
#  $browser.text_field(:id,"user_password").set("hrental123")
end

Then(/^click on login$/) do
  $browser.button(:id,"login_btn").click
end

Then(/^user should be logged in successfully$/) do
  $browser.text.should include("Signed in successfully.")
  $browser.div(:id,"user_name").text.should include "Hello Yorston"
end


