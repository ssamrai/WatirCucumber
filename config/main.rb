require "rubygems" #all the require statements should be here
require "watir"
require "cucumber"
require "headless"
#require "mysql"
require "watir-webdriver"


CONFIG = YAML.load_file("#{File.dirname(__FILE__)}/config.yml")

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each { |f| require f } #load all the lib files

Dir["#{File.dirname(__FILE__)}/../pages/**/*.rb"].each { |f| require f } # all page functions are loaded

#set base url for test cases this can be default set in config.yml or can be passed with cucumber command
def set_base_url
  $base_url = (ENV['base_url'].nil? || ENV['base_url'].empty?) ? CONFIG['default_base_url'] : ENV['base_url']
end

set_base_url

#$headless=Headless.new
#$headless.start #start headless
$browser = Watir::Browser.new 
$browser.goto $base_url #start browser
