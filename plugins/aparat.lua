--[[

#
#     @GPMOD
#   @Dragon_Born
#      

]]

local function run(msg, matches)
	if matches[1]:lower() == 'aparat' then
		local url = http.request('http://www.aparat.com/etc/api/videoBySearch/text/'..URL.escape(matches[2]))
		local jdat = json:decode(url)

		local items = jdat.videobysearch
		text = 'Searching Result : \n'
		for i = 1, #items do
		text = text..'\n---------------------------\n\n'..i..'- '..items[i].title..'\n   Seens : '..items[i].visit_cnt..'\n\n    Link : aparat.com/v/'..items[i].uid
		end
		text = text..''
		return text
	end
end

return {
   patterns = {
"^[/!](aparat) (.*)$",
   },
   run = run
}
