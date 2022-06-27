local arr1 = {1, 2, 3, 4}
local function maximum(arr)
    local index = 1
    local value = arr[1]
    for i = 1, #arr do
        if arr[i] > value then
            value = arr[i]
            index = i
        end
    end
    return index, value
end
local mi, mv = maximum(arr1)
assert(mi == 4 and mv == 4)

local function add(...)
    local sum = 0
    for key, value in pairs{...} do
        sum = sum + value
    end
    return sum
end
