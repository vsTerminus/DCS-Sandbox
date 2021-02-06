local defaultSound = "tsctra00.wav"
local radioOptions = {
	dropSmoke = false,
}

local function setGroupAltitude(groupData, newAlt)
    if ( groupData.route and groupData.units and newAlt ) then
        
        for i,u in pairs(groupData.units) do
            groupData.units[i].alt = newAlt
        end

        for i,wp in pairs(groupData.route) do
            groupData.route[i].alt = newAlt
        end

    end
end

local function offsetRoute(groupData, newPos)
    if ( groupData.groupName ) then
        env.info(string.format("Adjusting waypoints relative to markpoint for group %s", groupData.groupName))
    else
        env.info("Adjusting waypoints relative to markpoint for cloned group")
    end
    local route = groupData.route

    env.info((string.format("Markpoint is at %0.02f, %0.02f, WP1 is at %0.02f, %0.02f", newPos.x, newPos.z, route[1].x, route[1].y)));
    local Xdiff = newPos.x - route[1].x
    local Ydiff = newPos.z - route[1].y -- markPoint is vec3, route wps are vec2
    env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))

    for i,wp in pairs(route) do
        --env.info((string.format("WP altitude: %d", wp.alt)))
        route[i].x = wp.x + Xdiff
        route[i].y = wp.y + Ydiff			
    end
end

local function offsetUnits(groupData, newPos, lookAt)
    env.info("offsetUnits called")
    if ( groupData.groupName ) then
        env.info(string.format("Adjusting unit start point(s) for group %s", groupData.groupName))
    else
        env.info("Adjusting unit start point(s) for cloned group")
    end

    local units = groupData.units
    env.info("Got units")

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

function setRaceTrack(groupData, A, B)

    env.info(string.format("Updating unit start points for group %s", groupData.groupName))

    offsetUnits(groupData, A, B)

    env.info("Updating route wp1 and wp2")
    groupData.route[1].x = A.x
    groupData.route[1].y = A.z
    groupData.route[2].x = B.x
    groupData.route[2].y = B.z
end

function setCircle(groupData)
    
    env.info(string.format("Setting 'Circle' Orbit Pattern for group %s", groupData.groupName))

    -- Get tasks for this group
    local tasks = groupData.route[1].task.params.tasks

    -- Look for the Orbit task, change the pattern type to Circle
    for num,task in ipairs(tasks) do
        --env.info(string.format("Checking Task %s", num))
        if ( task.id == "Orbit" ) then
            env.info("Found Orbit Task -- Updating Pattern Type to 'Circle'")
            task.params.pattern = 'Circle'
        end
    end

    -- Remove the second waypoint
    table.remove(groupData.route, 2)
end

function setBfm(spawnData, clientData, A, B)

    env.info(string.format("Setting BFM route for group %s to attack %s", spawnData.groupName, clientData.groupName))

    -- Make the spawned group engage the client group
    local tasks = spawnData.route[1].task.params.tasks
    env.info("Got tasks")
    for num,task in ipairs(tasks) do
        if ( task.id == "EngageGroup" ) then
            env.info("Found Engage Group Task -- Updating Group ID to Client's ID")
            task.params.groupId = clientData.groupId
        end
    end

    -- Update the group's altitude
    setGroupAltitude(spawnData, clientData.units[1].alt)

    -- Update Spawn and WP1 coords
    offsetUnits(spawnData, A, B)
    spawnData.route[1].x = A.x
    spawnData.route[1].y = A.z
    env.info("Updated Spawn Coords")
    spawnData.route[2].x = B.x
    spawnData.route[2].y = B.z
    env.info("Updated WP1 Coords")

end

-- Given a start point, a radian heading, and a distance in meters, calculate the endpoint
function getEndPoint(startPoint, rads, dist)
    local endPoint = {}

    -- rads in DCS range from 0 to 2pi
    -- We need to condense it down to <= pi/2 for right triangle calculations
    -- and then correlate the resulting a and b sides to the proper X and Y positional axes.
    local alpha = rads
    env.info(string.format("getEndPoints was passed an angle of %0.2f rad", rads))
    while alpha > (math.pi/2) do alpha = alpha - (math.pi/2) end    -- Reduce the angle by 90 degrees until it is less than or equal to 90 degrees
    env.info(string.format("Right Triangle angle: %0.2f rad", alpha))

    local sideA = dist * math.sin(alpha)
    env.info(string.format("Side A is %0.2f", sideA))

    local sideB = math.sqrt( (dist*dist) - (sideA*sideA) )
    env.info(string.format("Side B is %0.2f", sideB))

    -- X+ is up
    -- X- is down
    -- Z+ is right
    -- Z- is left

    if rads <= (math.pi/2) then
        env.info("Quadrant 1")
        endPoint.x = startPoint.x + sideB
        endPoint.z = startPoint.z + sideA
    elseif rads <= math.pi then
        env.info("Quadrant 2")
        endPoint.x = startPoint.x - sideA
        endPoint.z = startPoint.z + sideB
    elseif rads <= 1.5*math.pi then
        env.info("Quadrant 3")
        endPoint.x = startPoint.x - sideB
        endPoint.z = startPoint.z - sideA
    elseif rads <= 2*math.pi then
        env.info("Quadrant 4")
        endPoint.x = startPoint.x + sideA
        endPoint.z = startPoint.z - sideB
    else
        env.info("wtf")
    end

    env.info(string.format("New Endpoint: %0.2f, %0.2f", endPoint.x, endPoint.z))

    return endPoint
end

function smokeIfAlive(group)
    -- Check inputs
    if group and group.units then
        
		if (Group.getByName(group.name) and Group.getByName(group.name):isExist() == false) or (Group.getByName(group.name) and #Group.getByName(group.name):getUnits() < 1) or not Group.getByName(group.name) then
            env.info("Group is dead, stop spawning smoke")
        else -- Group is alive
            local avgPoint = avgUnitsPos(group.units)
            if ( avgPoint ) then
                env.info("Got avg point vec2")
                avgPoint.y = land.getHeight({x=avgPoint.x, y=avgPoint.z})
                env.info("Got avg point vec3")
                smokeAtCoords(avgPoint)
                env.info("Smoke dropped at coords")
                return timer.getTime() + 300
            end
        end
    else
        env.info("smokeIfAlive was not passed valid group data")
        dumper(group)
    end
end

function smokeForMinutes(mins)
	-- Unfinished. For now smoke is permanent.
	smokeAtCoords(markPoint)
	return timer.getTime() + 300
end

function spawnSmoke(args)
	timer.scheduleFunction(smokeForMinutes, 20, timer.getTime() + 1)
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

    -- Limitation right now requires the groupData to have a racetrack orbit set
    if ( hasRaceTrack(groupData) ) then
        env.info("This group has a Racetrack task and needs points updated")

        local clientPos = mist.getLeadPos(args.clientGroup)
        local clientHeading = mist.getHeading(Group.getByName(args.clientGroup):getUnit(1))

        -- Magic Tanker spawns in front of the client matching their heading
        if ( args.magic and args.racetrack ) then
            env.info("This is a magic racetrack tanker")
            local A = getEndPoint(clientPos, clientHeading, 500)
            local B = getEndPoint(A, clientHeading, 203720) -- 110nm
            setRaceTrack(groupData, A, B)
        
        elseif ( args.magic and args.circle ) then
            env.info("This is a magic circle tanker")
            local A = getEndPoint(clientPos, clientHeading, 500)
            local B = getEndPoint(clientPos, clientHeading, 10000)
            setRaceTrack(groupData, A, B)
            setCircle(groupData)

        -- Normal tanker requires A and B markpoints
        elseif ( args.racetrack and aPoint.x and bPoint.x ) then
            env.info("This is a normal racetrack tanker")
            setRaceTrack(groupData, aPoint, bPoint)

        -- Circle tanker only requires an unnamed markpoint
        elseif ( args.circle and markPoint.x ) then
            env.info("This is a normal circle tanker")
            local B = getEndPoint(markPoint, clientHeading, 100)
            setRaceTrack(groupData, markPoint, B)
            setCircle(groupData)

        else
            sendError("You must create and delete a markpoint for a circle tanker, or two markpoints named 'A' and 'B' for a racetrack tanker first")
            return nil

        end

    elseif ( args.magic and args.bfm ) then
        env.info("Spawning Magic BFM Group")

        local clientPos = mist.getLeadPos(args.clientGroup)
        env.info("Got client position")
        local clientHeading = mist.getHeading(Group.getByName(args.clientGroup):getUnit(1))
        env.info("Got client heading")
        local spawnPoint = getEndPoint(clientPos, clientHeading, 1900)
        env.info("Got spawn point")

        local clientData = mist.getCurrentGroupData(args.clientGroup)

        dumper(clientData)

        setBfm(groupData, clientData, spawnPoint, clientPos)
        env.info("Set BFM route")
    
    elseif ( markPoint.x and markPoint.z ) then
        env.info("Spawning a non-race-track group")
        offsetRoute(groupData, markPoint)
        offsetUnits(groupData, markPoint)

    else
        sendError("You must create and delete a markpoint before you can spawn anything.")
        return nil
    end

    --dumper(groupData)
    
    -- Strip ID and Group Name if cloning
    if ( args.group.action == 'clone' ) then
        stripIdentifiers(groupData) 
        groupData.clone = true
    end

    spawnedData = mist.dynAdd(groupData)
    printSpawned(args)

    if ( args.category ~= 'air' and args.group.smoke and radioOptions.dropSmoke ) then
        env.info("Dropping Smoke")
        timer.scheduleFunction(smokeIfAlive, spawnedData, timer.getTime() + 1)
    end
end

