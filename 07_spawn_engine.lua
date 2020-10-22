local defaultSound = "tsctra00.wav"

local function relativeRoute(groupName)
	env.info(("Adjusting waypoints relative to markpoint for group"))
	env.info(groupName)
	local route = exported.groupData[groupName].route
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, WP1 is at %0.02f, %0.02f", markPoint.x, markPoint.z, route[1].x, route[1].y)));
	local Xdiff = markPoint.x - route[1].x
	local Ydiff = markPoint.z - route[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,wp in pairs(route) do
		--env.info((string.format("WP altitude: %d", wp.alt)))
		route[i].x = wp.x + Xdiff
		route[i].y = wp.y + Ydiff			
	end

	return route
end

local function relativeUnits(groupName)
	env.info("Adjusting unit start point(s) for group")
	env.info(groupName)
	
	local units = exported.groupData[groupName].units
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, Unit 1 is at %0.02f, %0.02f", markPoint.x, markPoint.z, units[1].x, units[1].y)));
	local Xdiff = markPoint.x - units[1].x
	local Ydiff = markPoint.z - units[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,u in pairs(units) do
		units[i].x = u.x + Xdiff
		units[i].y = u.y + Ydiff
	end
	return units
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

function stripIdentifiers(groupData)
    -- Remove top level group identifiers
    groupData.groupName = nil
    groupData.groupId = nil
    env.info("Top Level group info scrubbed")

    -- Now remove it from all units
    for k,unit in pairs(groupData.units) do
        unit.groupName = nil
        env.info("Unit group name")
        unit.groupId = nil
        env.info("Unit group id")
        unit.unitId = nil
        env.info("Unit ID")
        unit.unitName = nil
        env.info("Unit Name")
    end
    env.info("Unit level info scrubbed")
end

function spawnGroup(args)
	env.info("Adding Dynamic Group")
	--dumper(args)
	
	local groupName = args.group.name
	env.info("Group Name")
	env.info((groupName))
	local groupData = mist.utils.deepCopy(exported.groupData[groupName])
	groupData.clone = false
    groupData.action = args.group.action

    if ( args.group.action == 'clone' ) then
        stripIdentifiers(groupData) 
        groupData.clone = true
    end

    env.info("About to update route waypoints")
	-- Update route based on markpoint coords
    --relativeRoute(groupName)
	local newRoute = relativeRoute(groupName)
	groupData.route = newRoute
	
    env.info("About to update unit spawn positions")
	-- Also update starting unit positions based on markpoint.
	local newUnits = relativeUnits(groupName)
	groupData.units = newUnits
    --relativeUnits(groupName)
	
	dumper(groupData)
	
	mist.dynAdd(groupData)
	printSpawned(args)
end

--[[

To-do:

- Figure out how to re-spawn a group
- Figure out how to spawn clones of a group

]]--

