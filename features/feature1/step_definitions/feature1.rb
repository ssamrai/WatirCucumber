require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

#all step definitions here
When(/^I enter my (\d+) in the Collector Number input field$/) do |collector_number|
  HomePage.enter_valid_collector_num(collector_number)
end
Before do |scenario|
  $browser.driver.save_screenshot "#{File.dirname(__FILE__)}/../../../screenshots/before.png"
  embed "#{File.dirname(__FILE__)}/../../../screenshots/@@filename_before.png",'image/png'
end

Then(/^I should see "(.*?)" in the header$/) do |name|
  HomePage.verifyL2login(name)
end

After do |scenario|
  $browser.driver.save_screenshot "#{File.dirname(__FILE__)}/../../../screenshots/after.png"
  embed "#{File.dirname(__FILE__)}/../../../screenshots/after.png",'image/png'
end