local data = {}
local names = {}
local fname = '01_group_data.lua'

for k,v in pairs(mist.DBs.groupsByName) do
    table.insert(names, k)
	data[k] = v
	local route = mist.getGroupRoute(k, 'task')
	local payload = mist.getGroupPayload(k)
	data[k].route = route
	for i,unit in pairs(payload) do
		data[k].units[i].payload = payload[i]
	end
end

table.sort(names)

local fHead = [=[
--[[

These groups are built and placed using the Mission Editor in "Spawnable_Units.miz"
When the mission runs MIST will write a file called 01_group_data.lua to your Logs directory.

Replace this file with the one written to your Logs folder whenever you make updates
to the Spawnable_Units mission, and re-run 'make install' to push the update to all the sandboxes.

]]--

exported = {}

exported.groupData =
{
]=]

mist.debug.writeData(string.format, {fHead}, fname)
for _,name in ipairs(names) do
    env.info(string.format("Writing Group: %s", name))
    mist.debug.writeData(mist.utils.serialize,{string.format('["%s"]', name), data[name], "\t"}, fname, 'append')
end
mist.debug.writeData(string.format, {"}"}, fname, 'a')

