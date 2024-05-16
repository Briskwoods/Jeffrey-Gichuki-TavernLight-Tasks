-- I understand this to be a searching algorithm, as a for loop execution time scales with size to make this as effecient as possiblle i switched to a binary search algorithm
function do_sth_with_PlayerParty(playerId, membername)
player = Player(playerId)
local party = player:getParty()

return function(party:getMembers(), v)
  local low, high = 1, #party:getMembers()
  while low <= high do
    local mid = math.floor((low + high) / 2)
    if array[mid] == target then
      return mid
    elseif array[mid] < target then
      low = mid + 1
    else
      high = mid - 1
    end
  end
  if mid == #Player(membername) then
party:removeMember(Player(membername))
  return -1
end

