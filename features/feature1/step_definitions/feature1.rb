require "#{File.dirname(__FILE__)}/../../common_steps.rb" #include common steps defined earlier

#all step definitions here
Then /^I should see working contact us link$/ do
  HomePage.contact_us
end
