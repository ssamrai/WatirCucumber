class HomePage < Page
  class << self
  	def contact_us
	  	$browser.link(:id, "contact_us_link").click
    end
	
	  def sign_up
	  	$browser.link(:text,"Sign Up").click
    end
  end
end
