local defaultSound = "tsctra00.wav"

local function relativeRoute(group)
	env.info(("Adjusting waypoints relative to markpoint"))
	local oldRoute = mist.getGroupRoute(group.name, true)
	dumper(oldRoute)
	local newRoute = oldRoute
	
	env.info((string.format("Markpoint is at %0.02f, %0.02f, WP1 is at %0.02f, %0.02f", markPoint.x, markPoint.z, oldRoute[1].x, oldRoute[1].y)));
	local Xdiff = markPoint.x - oldRoute[1].x
	local Ydiff = markPoint.z - oldRoute[1].y -- markPoint is vec3, route wps are vec2
	env.info((string.format("Offset: %0.2f X, %0.2f Y", Xdiff, Ydiff)))
	
	for i,wp in pairs(newRoute) do
		env.info((string.format("WP altitude: %d", wp.alt)))
		if ( wp.action ~= 'Landing' ) then		-- Don't interfere with Landing WPs - they break if they aren't on an airfield.
			newRoute[i].x = wp.x + Xdiff
			newRoute[i].y = wp.y + Ydiff
		end
	end
	return newRoute
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

-- Don't move, just respawn the group as defined in the ME
function respawnUnit(args)
	mist.respawnGroup(args.group.name, true)
	printSpawned(args)
end
	
-- Spawn the unit at a custom location defined by the markpoint
function spawnUnit(args)

	env.info("spawnUnit called with:")
	dumper(args)

	local unitId = args.unit
	local group = args.group
	local action = group.action -- Accepted actions are clone, teleport, respawn
	local cat = args.category -- Accepted categories are land, water, air

	-- If we have a markpoint, we can spawn units there instead of ME coords.
	if ( markPoint.x ) then		
		local spawnVars = {}
		spawnVars.groupName = group.name
		spawnVars.action = group.action
		spawnVars.point = markPoint
		
		-- Offset the route
		if ( group.relative ) then
			spawnVars.route = relativeRoute(group)
			dumper(spawnVars.route)
		else
			spawnVars.route = mist.getGroupRoute(group.name, true) -- Absolute waypoints
		end
		
		-- Fix starting altitude, now that we have the route laid in.
		local wp1Alt = spawnVars.route[1].alt
		if ( wp1Alt > markPoint.y ) then spawnVars.point.y = wp1Alt end
		
		-- Spawn the group
		newGroup = mist.teleportToPoint(spawnVars)
		
		-- Need to only drop smoke for ground units, or it breaks things.
		if ( cat ~= 'air' and group.smoke ) then
			-- Drop smoke in the middle of the group
			avgPoint = mist.getAvgGroupPos(newGroup.name)
			trigger.action.smoke({x=avgPoint.x, y=avgPoint.y, z=avgPoint.z}, trigger.smokeColor.Red)
		end
		printSpawned(args)
	else -- If no mark point defined (yet), just respawn the group at ME coords.
		respawnUnit(args)
	end	
end