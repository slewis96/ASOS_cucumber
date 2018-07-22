Given("I am on the signup page") do
  asos_home_page.visit_home_page
  asos_home_page.visit_sign_up_page
  sleep(1)
end
Given("I am on the signin page") do
  asos_home_page.visit_home_page
  asos_home_page.visit_sign_in_page
  sleep(1)
end
Before '@successsu or @invalidsu' do
  @randomstr = (0...8).map { (65 + rand(26)).chr }.join
end
After do |scenario|
  if scenario.passed?
    File.open("/../../accounts.txt","w") do |fo|
      fo.puts "hello world"
    end
  end
end
When("I input the correct details") do
  randomemail = @randomstr + "@" + @randomstr + ".com"
  asos_sign_up_page.input_email(randomemail)
  asos_sign_up_page.input_fname(@randomstr)
  asos_sign_up_page.input_lname(@randomstr)
  asos_sign_up_page.input_birth_date(1, "February", 1960)
  sleep(1)
end
When("I input the correct details signin") do
  asos_sign_up_page.input_email("qweqweqwe123123@gmail.com")
  sleep(1)
end
When("I input valid password") do
  asos_sign_up_page.input_password("Password1234")
end
When("I input the an incorrect password") do
  asos_sign_up_page.input_password("assword")
end
When("I click register") do
  asos_sign_up_page.click_submit
  sleep 1
end
When("I click signin") do
  asos_sign_up_page.click_signin
  sleep 1
end

Then("I should be signed in on my account") do
  expect(asos_home_page.signed_in?).to eq "Sign Out"
end
Then("I get an signin error") do
  expect(asos_sign_up_page.correct_error_sign_in).to eq true
end

When(/^I input the an invalid (.*)$/) do |password|
  asos_sign_up_page.input_password(password)
end

Then(/^I get an appropriate (.*)$/) do |error|
  expect(asos_sign_up_page.correct_error).to eq error
end
