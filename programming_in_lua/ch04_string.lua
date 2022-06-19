local a = "hello"
print(#a)
print(a .. " wolrd")

print("aa\t''bb")
print('aa\t""bb')

local page = [[
<html>
<body>
    <h>hello world</h>
</body>
</html>
]]
print(page)

local b = 20 .. 22
print(type(b))
print("10" + 1)
print(type("10" + 1))
assert(tonumber("100101", 2) == 37)

local rep = string.rep("abc", 3)
print(rep)
local rev = string.reverse("abc")
print(rev)
local low = string.lower("ABC")
print(low)
local up = string.upper("abc")
print(up)
local s = "aabbcc"
print(string.sub(s, 2, -2))
print(s:sub(2, -2))
print(string.format("x = %d, y = %d", 10, 20))

-- Exercise
-- 4.1
local xml1 = [[
<![CDATA[
    Hello world
\]\]>
]]
print(xml1)
local xml2 = "<![CDATA[\n\tHello world\n]]>"
print(xml2)

-- 4.3
local function insert(str, position, add)
    local pre = ""
    local suf = ""
    local index = 0;
    if position < 0 and position >= -#str then
        position = position + #str + 1
    elseif position > #str or position == 0 then
        return nil;
    end
    -- if position
    
    return pre .. add .. suf
end
print(insert("hello world", 1, "start: "))
print(insert("hello wolrd", 7, "small"))
print(insert("hello world", -1, "!"))
