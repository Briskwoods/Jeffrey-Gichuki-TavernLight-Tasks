--[[ Whem I saw the value 1000 I took it to be a value specific to the player such as an Id/Identifier therefore
I took it that the function needed to be dynamically called by the system as it could be a multiplayer environment/setting
]]
local function releaseStorage(player)
player:setStorageValue(player:myId, -1)
end

function onLogout(player)
if player : getStorageValue(player:myId) == 1 then
addEvent(releaseStorage, player:myId, player)
end
return true
end
