Given(/^an unregistered user named "(.*?)"$/) do |user_name|
  visit('/')
  @user_name = user_name
  click_on "Sign up" # express the regexp above with the code you wish you had
end

When(/^Judy signs up for the site$/) do
  fill_in(:user_name, with: @user_name)
  click_on "Create Account"
end

Then(/^she should have an account$/) do
  user = User.where(name: @user_name).first
  expect(user).to be_valid
end

Then(/^it should say "(.*?)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end

When(/^they sign up for the site$/) do
  fill_in(:user_name, with: "")
  click_on "Create Account"
end

Then(/^they should not have an account$/) do
  user = User.where(name: @user_name).first
  expect(user).to be_invalid
end

Then(/^it should say "(.*?)"$/) do |welcome_message|
  expect(page).to have_content("You f'd up, nameless fellow")
end



