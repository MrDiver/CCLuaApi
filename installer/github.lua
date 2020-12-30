-- Easy Installer for computercraft-github by Eric Wieser
-- https://github.com/eric-wieser/computercraft-github
local tree = select(1,...)
if not tree then
  tree = 'master'
end
local url = ('https://raw.githubusercontent.com/eric-wieser/computercraft-github/%s'):format(tree)
local response = http.get(url..'/install.lua').readAll()
loadstring(response)()