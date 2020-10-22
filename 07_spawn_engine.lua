local defaultSound = "tsctra00.wav"

local function relativeRoute(groupName, newPos)
	env.info(("Adjusting waypoints relative to markpoint for group"))
	env.info(groupName)
	local route = exported.groupData[groupName].route
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, WP1 is at %0.02f, %0.02f", newPos.x, newPos.z, route[1].x, route[1].y)));
	local Xdiff = newPos.x - route[1].x
	local Ydiff = newPos.z - route[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,wp in pairs(route) do
		--env.info((string.format("WP altitude: %d", wp.alt)))
		route[i].x = wp.x + Xdiff
		route[i].y = wp.y + Ydiff			
	end

	return route
end

local function relativeUnits(groupName, newPos, lookAt)
	env.info("Adjusting unit start point(s) for group")
	env.info(groupName)
	
	local units = exported.groupData[groupName].units
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, Unit 1 is at %0.02f, %0.02f", newPos.x, newPos.z, units[1].x, units[1].y)));
	local Xdiff = newPos.x - units[1].x
	local Ydiff = newPos.z - units[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,u in pairs(units) do
		units[i].x = u.x + Xdiff
		units[i].y = u.y + Ydiff

        if ( lookAt ) then
            env.info("Trying math.atan2")
            local newHeading = getHeading(newPos, lookAt)
            if newHeading < 0 then
                newHeading = newHeading + 2*math.pi -- put heading in range of 0 to 2*pi
            end
            env.info(newHeading)
            env.info("Setting new heading")
            units[i].heading = newHeading
            units[i].psi = newHeading * -1
        end
	end
	return units
end

local function printSpawned(args)
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

local function stripIdentifiers(groupData)
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

local function hasRaceTrack(groupData)
    env.info("Getting tasks")
    local tasks = groupData.route[1].task.params.tasks

    env.info("Checking tasks")
    for k,task in pairs(tasks) do
        env.info(string.format("Checking Task %d", k))
        if ( task.params.pattern and task.params.pattern == "Race-Track" ) then
            env.info("Found Race-Track Task")
            return true
        end
    end
    env.info("Did not find Race-Track Task")
    return false
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

    env.info("Checking for race-track orbit")
    if ( hasRaceTrack(groupData) ) then
        env.info("This group has an Orbit Task")

        if ( aPoint.x and bPoint.x ) then
            env.info("Updating unit start points")
            groupData.units = relativeUnits(groupName, aPoint, bPoint)

            env.info("Updating route wp1 and wp2")
            groupData.route[1].x = aPoint.x
            groupData.route[1].y = aPoint.z
            groupData.route[2].x = bPoint.x
            groupData.route[2].y = bPoint.z

        else
            sendError("You must define two markpoints named 'A' and 'B' first")
            return nil
        end

    elseif ( markPoint.x and markPoint.z ) then
        
        groupData.route = relativeRoute(groupName, markPoint)
        groupData.units = relativeUnits(groupName, markPoint)

    else
        sendError("You must create and delete a markpoint before you can spawn anything.")
        return nil
    end

	dumper(groupData)
	
	mist.dynAdd(groupData)
	printSpawned(args)
end

--[[

To-do:

- Figure out how to re-spawn a group
- Figure out how to spawn clones of a group

]]--

