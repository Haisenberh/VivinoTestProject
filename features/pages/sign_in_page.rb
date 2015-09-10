require 'calabash-android/abase'

class SignInPage < Calabash::ABase

def trait
    "android.widget.TextView text:'Sign In'"
end

def sign_in_button
    tap_mark("button")
end

def send_button
    tap_mark("button")
end

 def enter_email(email)
    enter_text(email_field, email)
    send_button
 end

def email_field
 	"android.widget.TextView:'txtEmail'"
end

def pass_field
 	"android.widget.TextView:'txtPassword'"
end

def forgot_password_button
	tap_mark("txtForgotYourPassword")
end

def login(email,pass)
    enter_text(email_field, email)
    press_enter_button
    enter_text(pass_field, pass)
    sign_in_button
 end

def email_or_pass_incorect
wait_for_text("Email or password is incorrect", 
	timeout: 5, timeout_message: "Email or password is incorrect alert was not shown")
end

# User doesnt exist eroor is shown)) dont know how looks confirmation popup
def wait_for_confirm
wait_for_text("New password was send to your email", 
	timeout: 5, timeout_message: "Error, password was't send to your email")
end
end