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

--[[
    nil.. means nothing, can be treated as false
    number.. 1, 1.2
    string.. 'hello', "hello world"
    boolean.. true or false
    table.. very special data structure in lua
]]

local name = "Eddie"
print("My name is"..name.." this is a the lua learn project and I "..name.." will done it really well")


local suername = "Pan"
print(name.." "..suername)
name = nil -- use for optimizing the program, make it faster?

print([[
     coke
    cola
    eddie
]])

-- normally, the global variable starts with uppercase letter
-- which is not nesscary, however, this is rule unwritten
C = 20
local c = 11
print(C, c) -- lua is case-sensitive
_G.Hello = "Hello" -- another way to declare a global variable in Lua

local what_type = 1
print(type(what_type)) -- number
what_type = "string" 
print(type(what_type)) -- string
what_type = false
print(type(what_type)) -- boolean
what_type = nil
print(type(what_type)) -- nil

local str = '22'
print(type(str))
print(type(tonumber(str))) --tonumber method, return a number extra from string, or nil if it's a invalid number string like 22a

print(2 ^ 4) -- return number, float
print( 5 + 2 * 10 / 2)
print(math.pi)
print(math.random())
print(math.random())
math.randomseed(os.time())
print(math.random())
print(os.time())
