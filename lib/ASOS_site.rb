require_relative "pages/ASOS_home_page"
require_relative "pages/ASOS_sign_up_page"
module ASOSSite
  def asos_home_page
    ASOSHomePage.new
  end
  def asos_sign_up_page
    ASOSSignUpPage.new
  end
end
