require 'calabash-android/abase'

class StartPage < Calabash::ABase

def trait
    "android.widget.TextView text:'Try us out'"
end

def sign_up_with_facebook_button
	tap_mark "txtSignInWithFacebook"
end

def sign_up_with_google_button
	tap_mark "txtSignInWithGoogle"
end

def sign_up_with_email_button
	tap_mark "txtSignUpWithEmail"
end

def sign_up_with_email_button
	tap_mark "txtSignUpWithEmail"
end

def sign_up_with_email_button
	tap_mark "txtSignUpWithEmail"
end

def try_us_out_button_button
	tap_mark "txtTryUsOut"
end

def i_have_acc_button
	tap_mark "txtIHaveAnAccount"
end

end