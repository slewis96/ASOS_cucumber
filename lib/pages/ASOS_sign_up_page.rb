
class ASOSSignUpPage
  include Capybara::DSL

  def input_email email
    fill_in("Email", with: email)
  end
  def input_fname fname
    fill_in("FirstName", with: fname)
  end
  def input_lname lname
    fill_in("LastName", with: lname)
  end
  def input_password password
    fill_in("Password", with: password)
  end
  def input_birth_date day, month, year
    select(day, from: "BirthDay")
    select(month, from: "BirthMonth")
    select(year, from: "BirthYear")
  end
  def correct_error
    find(:id, 'Password-error').text
  end
  def correct_error_sign_in
    page.has_content?("Looks like either your email address or password were incorrect. Wanna try again?")
  end
  def correct_error_email
    page.has_content?("Email fail! Please type in your correct email address")
  end
  def click_submit
    click_on("register")
  end
  def click_signin
    click_on("signin")
  end

end
