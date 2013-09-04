class HomePage #this is a template of how pages.rb files should be written
  class << self
  	def contact_us
	  	$browser.link(:text, "Contact Us").click
    end
	
	  def sign_up
	  	$browser.link(:text,"Sign Up").click
    end
  end
end
