local defaultSound = "tsctra00.wav"

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

        if ( args.magic ) then -- This is a "magic" tanker :P Spawn it right in front of the client, going the same direction
            local clientPos = mist.getLeadPos(args.clientGroup)
            env.info("Client Position")
            dumper(clientPos)

            local clientHeading = mist.getHeading(Group.getByName(args.clientGroup):getUnit(1))
            env.info("Client Heading")
            env.info(clientHeading)

            local A = getEndPoint(clientPos, clientHeading, 500)
            dumper(A)
            local B = getEndPoint(A, clientHeading, 100000)
            dumper(B)
            setRaceTrack(groupData, A, B)

        elseif ( aPoint.x and bPoint.x ) then
            setRaceTrack(groupData, aPoint, bPoint)

        else
            sendError("You must define two markpoints named 'A' and 'B' first")
            return nil

        end

    elseif ( markPoint.x and markPoint.z ) then
        env.info("Spawning a non-race-track group")
        offsetRoute(groupData, markPoint)
        offsetUnits(groupData, markPoint)

    else
        sendError("You must create and delete a markpoint before you can spawn anything.")
        return nil
    end

    --dumper(groupData)

    mist.dynAdd(groupData)
    printSpawned(args)
end

