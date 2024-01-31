-- this is how Lua make comment
--[[
    this is 
    the multiple line comment
]]
local start = os.clock()

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

local runtime = 0
local run = true

while run do
    print("running")
    if runtime == 10 then
        run = false
    end
    runtime = runtime + 1
end

local x = 1
repeat -- at least execute once
    print("Hey There!", x)
    x = x + 1
until x > 10

-- User Input
print("What is 10 + 5?")
-- local user_input = io.read()
-- print("\nYour Answer: "..user_input)

-- io.write("Input 10 + 5: ")
-- local ans = io.read()
-- print("\nYour answer: ".. ans)

local num1, num2 = 10, 5
local true_ans = num1 + num2
-- io.write("Input ".. num1 .. " + " .. num2 .. " : ")
-- ans = io.read()

-- if tonumber(ans) == true_ans then
    -- print("You are correct")
-- else
    -- print("Your answer, "..ans.." is not correct")
-- end

-- table in lua
local arr_n = {10, true, "hello world", 2.4}
print(arr_n) -- only print the location in memory
print(arr_n[1]) -- index starts from 1

for i = 1, #arr_n do
    print(type(arr_n[i]).." : "..tostring(arr_n[i]))
end

local arr_r = {1, 314, 43, 123, 341, 2,  4, 3,1}
table.sort(arr_r)


table.insert(arr_r, #arr_r, "hello")
for i = 1, #arr_r do
    print(arr_r[i])
end

local arr_s = {"Hello", "World", "I", "am", "here"}
print(table.concat(arr_s, ","))

local arr_arr = {
    {1, 2, 3},
    {4, 5, 6},
    {9, 99, 999}
}

print(arr_arr[1]) -- address of the table inside of the table
print(arr_arr[1][1])

for i = 1, #arr_arr do 
    for j = 1, #arr_arr[i] do
        print(arr_arr[i][j])
    end
end

-- Function

local function display_age(age)
    age = age or 5
    print("You're "..age.." years old")
    print("You will be "..age + 2 .. " years old in 2 years")
    print("You were "..age-1 .." years old last year")
end

display_age(3)
display_age(4)
display_age(15)
display_age()

local function sum(num1, num2)
    return num1 + num2
end

print(sum(1,2))

local add10 = function(number)
    local outcome = 10 + number
    return number, outcome
end

local stored, output = add10(4)
print(stored.." had 10 added to it: "..output)
print(add10(5))

-- to use recurse, it has to be function counter
-- not counter = function()
-- otherwise it won't work
local function counter(number, end_num)
    local count = number + 1
    if count < end_num then
        print(count)
        return counter(count, end_num)
    end
    return count
end

print(counter(10, 15))

-- anonymous function
local function counter()
    local count = 0
    return function()
        count = count + 1
        return count
    end
end

-- varialbe count will be saved
-- counter function itself returns a function
-- therefore, x is also a function
-- when trying to print count, we need to execute the function
-- Question: why it can save value
local x = counter()
print(counter()()) -- can be also executed in this way
print(x())
print(x())
print(x())
print(x())
print(x())
print(x())
print(x())

local function sum(...) -- taking infinite amount of variables
    local sums = 0
    for key, value in pairs({...}) do
        sums = sums + value
    end
    return sums
end

print(sum(1,2,3,4,5))

-- co-routine
local coroutine_1 = coroutine.create(
    function()
        for i = 1, 10, 1 do
            print("coroutine 1 function: " ..i)
            if i == 5 then
                coroutine.yield()
            end
        end
    end
)

local coroutine_function = function()
    for i = 11, 20, 1 do
        print("coroutine 2 function: "..i)
    end
end

local coroutine_2 = coroutine.create(
    coroutine_function -- function not function execution
)
coroutine.resume(coroutine_1)
coroutine.resume(coroutine_2)

if coroutine.status(coroutine_1) == "suspended" then
    coroutine.resume(coroutine_1)
end

-- lua file
io.output("lua_file.txt") -- used to create file, if the file exist, then replace the file
io.write("Hello World!")
io.close()
-- if we run it again, then it will over write it

-- how to read the file
io.input("lua_file.txt")
local file = io.read(5) -- read 5 characters
print(file)
-- read number
-- different way to create a file
local read_file = io.open("read_number.txt", "w")
read_file:write("88s") -- it will just read number
read_file:close()
io.input("read_number.txt")
local num = io.read("*number") -- read it as a number
print(type(num))
print(num + 99)

local test_create_file = io.open("test_create_file.txt", "w")
test_create_file:write("Sccc")
test_create_file:close()
io.input("test_create_file.txt")
local read_value = io.read(1000)
print(read_value)

-- read the whole line
local multi_line_file = io.open("multi_lines_file.txt", "w")
multi_line_file:write("This is the first line\n")
multi_line_file:write("This is the second line\n")
multi_line_file:close()
io.input("multi_lines_file.txt")
print(io.read("*all"))
print(io.read("*line"))
print(io.read("*line"))

-- append file
local append_file = io.open("append_file.txt", "a")
append_file:write("\nThis is first line of the file") -- this will keep append to the file everytime the file is executed
append_file:close()

local read_append_file = io.open("append_file.txt", 'r')
local everything = read_append_file:read("a")
print(everything)

print(os.time()) -- since 1970
print(os.time({
    year = 2000,
    month = 10,
    day = 1,
    hour = 14,
    min = 20,
    sec = 23
})) -- seconds from 2000 Oct 1st 14:20:23

print(
    os.difftime( -- returns a integer
        os.time(),
        os.time(
            {
                year = 2000,
                month = 10,
                day = 1,
                hour = 14,
                min = 20,
                sec = 23
            }
        )
    )
)

print(os.getenv("HOME")) -- same as echo $HOME
print(os.getenv("USER")) -- same as echo $USER

os.rename("append_file.txt", "renamed_append_file.txt")
os.remove("renamed_append_file.txt")
--os.execute("command") -- don't use it unless you don't have choice

print(os.clock() - start)
-- os.exit() will exit the program

local mod = require("mymath") --import module
print(mod.add(10, 2))
print(mod.power(2,3))