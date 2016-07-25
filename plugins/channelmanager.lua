local function run(msg, matches)
      if is_sudo(msg.from.peer_id) then
  local web_preview = '&disable_web_page_preview='..(tostring(disable_web_page_preview) or '')
  local markdown = '&parse_mode='..('markdown' or 'HTML')
  local key = _config.bot_api.key
  local url = 'https://api.telegram.org/bot'..key..'/sendMessage'
  local response = {}
local text = matches[1]
  local res, code = https.request{
    url = url..'?chat_id=@Shahab_Ch'..markdown..web_preview..'&text='..URL.escape(text),
    method = "POST",
    sink = ltn12.sink.table(response),
  }
  return "Sent!\nSee @mohammad20162015 "
end
end
  return {
    patterns = {
      '^[#!/]send (.+)$'
    },
    run = run
  }