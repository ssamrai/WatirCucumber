class HomePage 
  class << self
  	def contact_us
	  	$browser.link(:text, "Contact Us").click
    end
	
	  def sign_up
	  	$browser.link(:text,"Sign Up").click
    end
  end
end
