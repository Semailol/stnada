--its just block all remote execpt those🤨
assert(getrawmetatable)
gmt = getrawmetatable(game)
setreadonly(gmt, false)
old = gmt.__namecall
gmt.__namecall =
newcclosure(
function(self, ...)
local args = {...}
if tostring(self) == "RemoteFunction" then return end
if tostring(self) == "MainEvent" then
if tostring(args[1]) == "DropMoney" or
tostring(args[1]) == "TimerDecrease" or
tostring(args[1]) == "Grabbing" or
tostring(args[1]) == "Block" or
tostring(args[1]) == "Stomp" or
tostring(args[1]) == "JoinCrew" or
tostring(args[1]) == "LeaveCrew" or
tostring(args[1]) == "PhoneCall" or
tostring(args[1]) == "Boombox" or
tostring(args[1]) == "BoomboxStop" or
tostring(args[1]) == "EnterPromoCode" or
tostring(args[1]) == "PurchaseSkinCrate" or
tostring(args[1]) == "TimerMoney" or
tostring(args[1]) == "Reload" or
tostring(args[1]) == "UpdateMousePos" or
tostring(args[1]) == "FireworkText" or
tostring(args[1]) == "ChargeButton" or
tostring(args[1]) == "ResetNew"  then else return end end return old(self, ...)end)

local g
g = hookmetamethod(game, "__namecall", function(...)
local f = {...}
local c = f[1]
local a = getnamecallmethod()
local _ = getcallingscript()
if (a == "FireServer" and c == d and e(b, f[2])) then return end
if (not checkcaller() and getfenv(2).crash) then hookfunction(getfenv(2).crash, function() end) end return g(...) end)