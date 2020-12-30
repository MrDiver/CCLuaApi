local args = {...}
local url = args[1]
local filename = args[2]
if url then
    local req = http.get(url)
    local content = req.readAll()
    if filename then
        local file = fs.open(filename,"w")
        file.write(content)
        file.close()
    else
        print(content)
    end
else
    print("Help\ncurl <url> [filename]")
end
