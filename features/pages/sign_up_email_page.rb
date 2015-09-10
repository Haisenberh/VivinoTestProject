require 'calabash-android/abase'

class SignUpEmailPage < Calabash::ABase

def trait
    "android.widget.TextView text:'Email'"
end

def login(email,pass)
    enter_text(email_field, email)
    press_enter_button
    enter_text(pass_field, pass)
    next_button
 end

 def next_button
    tap_mark("button")
 end

 def email_field
 	"android.widget.TextView:'txtEmail'"
 end

 def pass_field
 	"android.widget.TextView:'txtPassword'"
 end

def wait_for_wrong_email_alert
wait_for_text("please enter valid e-mail id.", 
	timeout: 5, timeout_message: "Email alert was not shown")
tap_mark('button1')
end

def wait_for_already_ex_email_alert
wait_for_text("Email already registered. Forgot Your Password?.", 
	timeout: 5, timeout_message: "Allready exist email alert was not shown")
end

def email_or_pass_incorect
wait_for_text("Email or password is incorrect", 
	timeout: 5, timeout_message: "Email or password is incorrect alert was not shown")
end
end