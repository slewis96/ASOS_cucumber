
class ASOSHomePage
  include Capybara::DSL

  HOME_PAGE_URL = 'http://www.asos.com'

  def visit_home_page
    visit(HOME_PAGE_URL)
  end
  def visit_sign_up_page
    click_button(class: '_3TGKcxB wN7TsRy')
    click_link(class: '_1k1reGo')
    click_link(class: 'qa-join-asos')
  end
  def visit_sign_in_page
    click_button(class: '_3TGKcxB wN7TsRy')
    click_link(class: '_1k1reGo')
  end
  def signed_in?
    click_button(class: '_3TGKcxB wN7TsRy')
    sleep(1)
    find_link(class: '_1k1reGo').text
  end
end
