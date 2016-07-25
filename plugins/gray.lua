local function run(msg, matches)
local url = "http://lorempixel.com/g/600/600"
local file = download_to_file(url,'img.png')
send_photo(get_receiver(msg),file,ok_cb,true)
end
return {
patterns = {
"^[#!/]([Gg]ray)$",
"^عکس$"
},
run = run,
}
