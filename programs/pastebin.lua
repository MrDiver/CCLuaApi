local args = {...}
local url = args[1]
local filename = args[2]
if code then
    local req = http.get("pastebin.com/raw/"..code)
    local content = req.readAll()
    if filename then
        local file = fs.open(filename,"w")
        file.write(content)
        file.close()
    else
        print(content)
    end
else
    print("Help\npastebin <code> [filename]")
end
