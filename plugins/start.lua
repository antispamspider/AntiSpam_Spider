local function run(msg)
  local text = "*TeleDanger* `1.2An Advanced Administration Api Bot Based On TeleSeed Written In Lua` "
    local keyboard = {}
    keyboard.inline_keyboard = {
   {
               {text = 'admin', url = 'Telegram.Me/Xxcrazy_BoyxX'},
      },
      {
               {text = 'manager', url = 'Telegram.Me/:|test'},
      },
     {
               {text = 'channel“ˆ', url = 'Telegram.Me/openplugins'},
      },
    }
 send_api_keyboard(msg, get_receiver_api(msg), text, keyboard)
  end
return { 
patterns = {
"teledanger",
}, 
run = run
 }



