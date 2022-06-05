assert(1 == 1.0)
assert(0.2e3 == 200)
print(math.type(3))
print(math.type(3.0))
assert(0xff == 255)

print(math.type(1 + 1))
print(math.type(1.0 + 1.0))
print(math.type(1 + 1.0))
local a = 10
local b = 3
print(a / b)
print(a // b)
print(a % b)
assert(a % b == a - ((a // b) * b))
local x = math.pi
print(x - x % 0.01)
print(x - x % 0.001)

assert(true == true)
assert(true ~= false)
assert(1 < 2)
assert(3 > 2)
assert(2 >= 2)
assert(1 <= 2)

print(math.random(os.time()))

print(math.floor(3.3))
print(math.floor(-3.3))
print(math.ceil(3.3))
print(math.ceil(-3.3))
print(math.modf(3.3))
print(math.modf(-3.3))
print(math.floor(2^70))
local function round(num)
    local f = math.floor(num)
    if num == f then return f
    else return math.floor(num + 0.5)
    end
end
print(round(3.4999))
print(round(3.5))
