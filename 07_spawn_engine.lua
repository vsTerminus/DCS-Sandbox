local defaultSound = "tsctra00.wav"

local function relativeRoute(groupName)
	env.info(("Adjusting waypoints relative to markpoint for group"))
	env.info(groupName)
	--local oldRoute = mist.getGroupRoute(group.name, true) -- Doesn't work for dynamically added groups, but luckily we have that info in our table already.
	local oldRoute = exported.groupData[groupName].route
	local newRoute = oldRoute
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, WP1 is at %0.02f, %0.02f", markPoint.x, markPoint.z, oldRoute[1].x, oldRoute[1].y)));
	local Xdiff = markPoint.x - oldRoute[1].x
	local Ydiff = markPoint.z - oldRoute[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,wp in pairs(newRoute) do
		--env.info((string.format("WP altitude: %d", wp.alt)))
		newRoute[i].x = wp.x + Xdiff
		newRoute[i].y = wp.y + Ydiff			
	end
	return newRoute
end

local function relativeUnits(groupName)
	env.info("Adjusting unit start point(s) for group")
	env.info(groupName)
	
	local oldUnits = exported.groupData[groupName].units
	local newUnits = oldUnits
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, Unit 1 is at %0.02f, %0.02f", markPoint.x, markPoint.z, oldUnits[1].x, oldUnits[1].y)));
	local Xdiff = markPoint.x - oldUnits[1].x
	local Ydiff = markPoint.z - oldUnits[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,u in pairs(newUnits) do
		newUnits[i].x = u.x + Xdiff
		newUnits[i].y = u.y + Ydiff
	end
	return newUnits
end

function printSpawned(args)
	local group = args.group
	local msg = {}
	msg.text = string.format('Respawned: %s', group.description)
	msg.displayTime = 20
	msg.msgFor = {coa = {'all'}}
	if ( args.sound ) then
		if ( group.sound ) then msg.sound = group.sound else msg.sound = defaultSound end
	end
	mist.message.add(msg)
end

function spawnGroup(args)
	env.info("Adding Dynamic Group")
	dumper(args)
	
	local groupName = args.group.name
	env.info("Group Name")
	env.info((groupName))
	local groupData = exported.groupData[groupName]
	groupData.clone = false
	groupData.action = 'respawn'
	
	-- Update route based on markpoint coords
	local newRoute = relativeRoute(groupName)
	groupData.route = newRoute
	
	-- Also update starting unit positions based on markpoint.
	local newUnits = relativeUnits(groupName)
	groupData.units = newUnits
	
	dumper(groupData)
	
	mist.dynAdd(groupData)
	printSpawned(args)
end

--[[

To-do:

- Figure out how to re-spawn a group
- Figure out how to spawn clones of a group

]]--

