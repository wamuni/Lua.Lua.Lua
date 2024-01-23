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


-- Math in Lua
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

print(math.random(10, 40))
print(math.max(10, 12, 13, 45, 51, 1, 23, 23)) -- 51
print(math.min(10, 12, 13, 45, 51, 1, -23, 23)) -- -23

print(math.floor(3.14)) -- 3
print(math.ceil(3.14)) -- 4


-- String in Lua
local strin = "hello world!" 
print(#strin) -- 11
print(strin.." hello hello")
local strin_number = 22
local strin_number_tostring = tostring(strin_number)
print(type(strin_number), type(strin_number_tostring))

print("Hello\nWorld!\vI am Eddie\v I am here to save the world") -- print to next line and start from the end of last line

local str_l = "Hello World"
print(string.lower(str_l)) -- hello world
print(string.upper(str_l)) -- HELLO WORLD
print(string.len(str_l)) -- return the length of the string

print(string.sub(str_l, 7))
print(string.char(65))
print(string.byte("a"))
print(string.byte(str_l, 7, 99)) -- has to specify the last parameter

print(string.rep("Hello!", 10, ",")) -- repeat 10 times with , in between
print(string.format("pi: %.2f\nMy age: %i", math.pi, 27)) -- format string

print(string.find(str_l, "orl")) -- return the range of index
print(string.match(str_l, "orld"))

local begin, ending = string.find(str_l, "orl")
print("Begin: "..begin.."\nEnd: "..ending)
print(string.gsub(str_l, "o", "!")) -- replace the char with another one, return the replaced string, and how many characters has been changed
print(string.gsub(str_l, "l", "HAPPY FACE"))


-- IF STATEMENT in Lua

if false then
    print("Statement was true")
end
--[[
    >
    <
    <=
    >=
    ~= !! this is special equal
]]

local age = 2
if age >= 17 and age < 60 then
    print("You may enter")
end

if (age > 14) or (age < 54) then
    print("You may enter with or")
end

local name = "Tom"
if (name == "Tom") and age == 32 then
    print("You are the right one")
end

if not (age < 18) then -- has to use ()
    print("You may not enter")
end

if age > 20 then
    print("You're old")
elseif age < 10 then
    print("You're too young")
else
    print("You're young")
end

if type(age) == "number" then
    print("Age is a number value")
end

-- ternery operation
-- local old = false
-- if age > 30 then
--     old = true
-- end

-- print(old)

local old = (age > 30) and true or false
print(old)

-- Loop in Lua
-- count backwards
for i = 10, 1, -1 do
    print(i) -- 10, 9, 8, 7...1
end

-- count forwards
for i = 1, 10, 2 do
    print(i) -- 1, 3, 5, 7, 9
end

local start_val, end_val, step_val = 1, 10, 1
for i = start_val, end_val, step_val do
    print("using start_val, end_val && step_val "..i)
end

local arr = {2, 3, 4, 23, 422, 544, 24}
for i = 1, #arr, 1 do
    print(arr[i])
end

local peeps = 10
while peeps > 0 do -- thoerically infinite loop
    print("peeps:", peeps)
    peeps = peeps - 1
end