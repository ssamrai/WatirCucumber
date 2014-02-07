require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

#all step definitions here
When(/^I enter my (\d+) in the Collector Number input field$/) do |collector_number|
  HomePage.enter_valid_collector_num(collector_number)
end

Then(/^I should see "(.*?)" in the header$/) do |name|
  HomePage.verifyL2login(name)
end