-- Respawn the carriers when they reach shore.
local function respawnBoats()

	local units = {}
	units['CVN-73 George Washington 1-1'] 	= 'CVN-73 George Washington'
	units['Super Kuznetsov 1-1'] 			= 'CV 1143.5 Admiral Kuznetsov'

	for unit,group in pairs(units) do
		local boats = mist.getUnitsInZones({unit},{'Carrier Respawn Zone'})
		if ( boats[1] ) then respawnUnit({ unit=boats[1]._id, group=spawnable.fboats[group], sound=false, category='water' }) end
	end

	return timer.getTime() + 60 -- Run once per minute
end

timer.scheduleFunction(respawnBoats, nil, timer.getTime() + 1)

