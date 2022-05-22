Account = {balance = 0}
function Account:new(o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end
function Account:withdraw(v)
    self.balance = self.balance - v
end

local account1 = Account:new()
account1:withdraw(10)
print(account1.balance)

Account2 = Account:new()
Account2 = Account2:new{limit = 10}
function Account2:withdraw(v)
    if self.balance > Account2.limit then
        self.balance = self.balance - v
    else
        print("error")
    end
end
function Account2:getLimit()
    return self.limit
end
local account2 = Account2:new()
account2:withdraw(10)
print(account2.balance)

