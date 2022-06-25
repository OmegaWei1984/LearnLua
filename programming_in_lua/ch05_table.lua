local a = {}
a["x"] = 1
local b = a
b["x"] = 10
assert(a["x"] == 10)
assert(a.x == a["x"])
assert(a["y"] == nil)
local x = "x"
assert(a[x] == a["x"])
a[2.0] = 10
a[2.1] = 20
assert(a[2] == 10)
assert(a[2.100] == 20)

local one = "1"
local w = {x = 1, y = 2, one = "hello"}
w[1] = "test"
assert(w["1"] == nil)
assert(w["one"] == "hello")
assert(w[1] == "test")
local opnames = {["+"] = "add"}
local op = "+"
assert(opnames[op] == "add")

local c = {1, 2, 3, 4, 5}
c[#c] = nil
c[#c + 1] = 6
print(#c)
for _, v in ipairs(c) do
    print(v)
end
c[#c + 2] = 8
for _, v in ipairs(c) do
    print(v)
end
for i = 0, 7 do
    print(c[i])
end

local d = {1, 2, 3, 4}
table.insert(d, 5)
table.remove(d, 5)
table.remove(d, 5)
table.move(d, 1, 1, 2)
