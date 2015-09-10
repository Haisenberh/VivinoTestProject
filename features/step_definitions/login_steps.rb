Given(/^I am on the start screen$/) do
  @current_page = page(StartPage).await(timeout: 5)
end

 When(/^I choose to sign up with Email$/) do
  @current_page = @current_page.sign_up_with_email_button
end

When(/^I choose i have an account$/) do
  @current_page = @current_page.i_have_acc_button
end

Then(/^I choose try us out$/) do
  @current_page = @current_page.try_us_out_button_button
end

Then(/^I choose skip$/) do
  @current_page = page(NotRegister).skip_button
end

Then(/^I can see app main page$/) do
  unless @current_page.is_a?(NotRegister)
    raise "Expected main app page is shown, but I am still in the Not Register page #{@current_page}"
	end
end

 When(/^I enter valid credentials$/) do
  user = CREDENTIALS[:valid_user]
  @current_page = page(SignUpEmailPage).login(user[:email],
                                      user[:password])
end

Then(/^I am wait for successful login$/) do
unless @current_page.is_a?(SignInPage)
    raise "Expected successful login, but I am still in the current_page #{@current_page}"
	end
end
 When(/^I enter not exist user credentials$/) do
  user = CREDENTIALS[:not_exist_user]
  @current_page = page(SignUpEmailPage).login(user[:email],
                                      user[:password])
end

When(/^I enter invalid email format credentials$/) do
  user = CREDENTIALS[:invalid_format_user]
  @current_page = page(SignUpEmailPage).login(user[:email],
                                      user[:password])
end

When(/^I enter valid email credential$/) do
  user = CREDENTIALS[:valid_user]
  @current_page = page(SignInPage).enter_email(user[:email])
end

Then(/^I am wait for the wrong email or password alert$/) do
	@current_page = page(SignUpEmailPage).email_or_pass_incorect
end

Then(/^I am choose forgot my password$/) do
	@current_page = page(SignInPage).forgot_password_button
end

Then(/^I am wait for the wrong email format alert$/) do
	@current_page = page(SignUpEmailPage).wait_for_wrong_email_alert
end

Then(/^I am wait for confirm$/) do
	@current_page = page(SignInPage).wait_for_confirm
end