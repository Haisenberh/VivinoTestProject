require 'calabash-android/abase'

class NotRegister < Calabash::ABase

def trait
    "android.widget.TextView text:'Get more with a registered account'"
end

 def skip_button
    tap_mark("button")
 end

end
