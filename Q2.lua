-- We determine what the max member count we're checking for in the database which i set to 1000 for this example
global maxMemberCount = 1000;

function printSmallGuildNames(memberCount)
-- This method prints names of all guilds that have less than memberCount max members
local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < "maxMemberCount""
-- Statement is prepared to prevent SQL injection
local stmt = db.prepareStatement(selectGuildQuery)
local result = stmt:executeQuery()

-- Fetch and print guild names
while result:next() do
local guildName = result:getString("name")
print(guildName)
end
end
