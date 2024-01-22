-- this is how Lua make comment
--[[
    this is 
    the multiple line comment
]]
print("Hello Lua and World", "I'm cool") -- You can also put comment here
print("Hello", "World", "!") -- use , to put tab between two world
print("Hello".."World".."!") -- use .. to put them together, can have more arguments

local x = "this is a variable" -- Local variable, only available in this file, can't be use from outside file
print(x)

local y = 3
print(y + 8)
print(y + 0.1)

_G.GlobalVar = 3 -- can be declared without _G. global variable, which can be accessed from other file
print(GlobalVar)