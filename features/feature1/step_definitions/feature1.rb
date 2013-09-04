require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

#all step definitions here
Then /^I click on contact us link I should be redirected$/ do
  HomePage.contact_us
end

