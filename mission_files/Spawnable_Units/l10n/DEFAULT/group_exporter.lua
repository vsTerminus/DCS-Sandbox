local data = {}

for k,v in pairs(mist.DBs.groupsByName) do
	data[k] = v
	local route = mist.getGroupRoute(k, 'task')
	local payload = mist.getGroupPayload(k)
	data[k].route = route
	for i,unit in pairs(payload) do
		data[k].units[i].payload = payload[i]
	end
end

mist.debug.writeData(mist.utils.serialize,{'groupData', data}, '01_group_data.lua')