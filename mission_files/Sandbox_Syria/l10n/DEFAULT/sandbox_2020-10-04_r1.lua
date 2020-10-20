---------- BEGIN 01_helper_functions.lua ----------

function printScalar(pad, k, v)
	if type(v) == 'function' then
		env.info((string.format("%s'%s' = function'", pad, k)))
	elseif type(v) == 'nil' then
		env.info((string.format("%s'%s' = nil", k, pad)))
	elseif type(v) == 'boolean' then
		local bool = 'false'
		if v then bool = 'true' end
		env.info((string.format("%s'%s' = %s", pad, k, bool)))
	elseif type(v) == 'string' or type(v) == 'number' then
		env.info((string.format("%s'%s' = '%s'", pad, k, v)))
	else
		env.info((string.format("%s'%s' = Unknown Type: %s", pad, k, type(v))))
	end
end

function dumper(var, indent)
	
	if not indent then indent = 0 end

	if indent == 0 then env.info(("Dumper Start")) end
	
	local pad = ""
	for i=0,indent do
		pad = string.format("%s  ", pad)
	end
	
	if ( type(var) ~= 'table' ) then printScalar(pad, 'var', var)
	else
		for k,v in pairs(var) do
			if ( type(v) == 'table' ) then 
				env.info((string.format("%s'%s' = {", pad, k)))
				dumper(v, indent+1) 
				env.info((string.format("%s}", pad)))
			else
				printScalar(pad, k, v)
			end
		end
	end
	
	if indent == 0 then env.info(("Dumper End")) end

end
	
function groupId(unit)

	local unitDB =  mist.DBs.unitsById[tonumber(unit:getID())]
    if unitDB ~= nil and unitDB.groupId then
        return unitDB.groupId
    end

    return nil
end

---------- END 01_helper_functions.lua ----------

---------- BEGIN 02_landing_listener.lua ----------

local function onLanding(event)            
	if event.id == world.event.S_EVENT_LAND then                    
		local unit = event.initiator               
		local coalition = unit:getCoalition() -- 2 == blue
		local place = nil
		local category = nil
		
		if unit.place then 
			place = unit.place 
			category = place.category
		end
		
		if coalition == 2 and category == 4 and place:getName() == 'Bandar-e-Jask airfield' then
			trigger.action.setUserFlag(100, 1) -- Victory trigger
		end	 
		
		trigger.action.outSound("l10n/DEFAULT/Grunt Birthday Party.ogg")
	end    
end

mist.addEventHandler(onLanding)   

---------- END 02_landing_listener.lua ----------

---------- BEGIN 03_markpoint_listener.lua ----------

markPoint = {}

local function onMark(event)    
	if ( event.id == world.event.S_EVENT_MARK_ADDED ) then
		trigger.action.outSound("l10n/DEFAULT/TGoYes01.wav")
	end
	if ( event.id == world.event.S_EVENT_MARK_REMOVED ) then
		if ( event.pos ) then
			markPoint = event.pos
			
			local markMsg = {}
			markMsg.text = string.format('MarkPoint Coordinates Recorded: %s, %s, %s', event.pos.x, event.pos.y, event.pos.z) 
			markMsg.displayTime = 10
			markMsg.msgFor = {coa = {'all'}} 
			mist.message.add(markMsg)
			
			trigger.action.outSound("l10n/DEFAULT/TGoYes03.wav")
		end		
	end    
end


mist.addEventHandler(onMark)   

---------- END 03_markpoint_listener.lua ----------

---------- BEGIN 04_smoke_markers.lua ----------

-- The idea here is any zone named "Green Smoke <whatever>" should have green smoke
-- Any zone named "Red Smoke <whatever>" should have red smoke. Same for White, Blue and Orange.
-- and I don't want to do it with manual triggers; I just want to drop the trigger zone
-- and load this script file once.
-- Author: vsTerminus

-- Credit Oliver: https://stackoverflow.com/a/22843701
string.startsWith = function(self, str) 
    return self:find('^' .. str) ~= nil
end

-- Credit SNAFU: https://forums.eagle.ru/showpost.php?p=1960680&postcount=2
local function ZoneSmoke(zoneName)
	Aimpoint = trigger.misc.getZone(zoneName)
	Aimpointpos = {}
	Aimpointposx = Aimpoint.point.x 
	Aimpointposz = Aimpoint.point.z
	Aimpointposy = land.getHeight({x = Aimpoint.point.x, y = Aimpoint.point.z})
	Aimpt3 = {x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}
	
	
	if ( zoneName:startsWith("Green Smoke") ) then
		trigger.action.smoke({x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}, trigger.smokeColor.Green)
	elseif ( zoneName:startsWith("Red Smoke") ) then
		trigger.action.smoke({x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}, trigger.smokeColor.Red)
	elseif ( zoneName:startsWith("Blue Smoke") ) then
		trigger.action.smoke({x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}, trigger.smokeColor.Blue)
	elseif ( zoneName:startsWith("White Smoke") ) then
		trigger.action.smoke({x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}, trigger.smokeColor.White)
	elseif ( zoneName:startsWith("Orange Smoke") ) then
		trigger.action.smoke({x=Aimpointposx, y=Aimpointposy, z=Aimpointposz}, trigger.smokeColor.Orange)
	-- else do nothing
	end
		
	return timer.getTime() + 300
end

-- Pop smoke in all smoke zones
for k,v in pairs(mist.DBs.zonesByName) do
	-- ZoneSmoke(k) -- Un/Comment to pop smoke one time only
	timer.scheduleFunction(ZoneSmoke, k, timer.getTime() + 1) -- Un/Comment to pop smoke every 5 minutes to make it persistent
end

---------- END 04_smoke_markers.lua ----------

---------- BEGIN 05_spawnable_units.lua ----------

-- This file just contains the array of unit groups that can be spawned via the radio menu.
-- The idea is just to keep the clutter down in the radio menu file, which will contain all of the actual code and logic.

-- You must create groups matching the names found below. Ideally the description field should accurately describe the group's composition.
-- Location isn't important, as spawning will be done via map mark points.

-- For all entries below,
-- 		The array key is what will appear in the F10 menu (Keep it short!)
--		'name' must match the group name in the DCS Mission Editor
--		'description' is a string of text that will be displayed when the group spawns
--		'sound' is OPTIONAL, and should be the filename of the sound you want to play when the group spawns.

-- For sounds you must include the sound file in the mission somehow or it won't be able to play.
-- The easiest way to do this is to make a new trigger which does "SOUND TO COUNTRY" on mission start.
-- You can simply send each sound file to a country like Abkhazia and it will be included in the .miz file for use by scripting as well.

-- The array is broken up into categories. Each category can have a max of TEN spawnable groups.
-- If you exceed ten you'll need to make another category and update the radio menu lua as well.

spawnable = {}

-- "Armor" category
spawnable.armor = {
	['4x BTR-80s'] = {
		name = 'BTR-1',
		description = '4x APC BTR-80s',
		sound = 'tvurdy00.wav', -- Alright, bring it on!
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['4x T72 MBTs'] = {
		name = 'T72-1',
		description = '4x T72 Main Battle Tanks',
		sound = 'ttardy00.wav', -- Ready to roll out!
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Air Defences" category
spawnable.airdefences = {
	['SA-6 SAM Site'] = {
		name = 'KUB-1',
		description = 'SA-6 Gainful (2k12 Куб) with 4 Launchers, 1 Straight Flush Radar, 1 P-19 EWR',
		sound = 'tvkpss01.wav', -- I have ways of blowing things up
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['4x ZU-23'] = {
		name = 'ZU-1',
		description = '4x ZU-23s in assorted configurations',
		sound = 'tfbwht00.wav', -- Fired up
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['SA-10 SAM Site'] = {
		name = 'Grumble-1',
		description = 'SA-10 Grumble (S-300) with a Command Post, Big Bird EWR, Clamshell TAR, Flap Lid TER, and 8 Launchers',
		sound = 'TAdUpd07.wav', -- Nuclear Missile Ready
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Modern Fighters" category
spawnable.fighters = {
	['2x MiG-29A IR'] = {
		name = 'MIG-1',
		description = 'Two MiG-29As armed with IR Missiles',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['2x MiG-29A Guns'] = {
		name = 'MIG-2',
		description = 'Two MiG-29As armed with guns',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Warbird" category
spawnable.warbirds = {
	['2x Fw 190-D9'] = {
		name = 'D9-1',
		description = 'Two Fw 190-D9s',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Infantry" category
spawnable.infantry = {
	['10x Assorted Infantry'] = {
		name = 'Infantry-1',
		description = 'Ten Assorted Russian Infantry',
		sound = 'tmawht03.wav', -- Gimme somethin to shoot
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "Helicopters" category
spawnable.helicopters = {
	['Mi-24V'] = {
		name = 'Hind-1',
		description = 'An Mi-24V Hind Attack Helicopter',
		sound = 'pcowht03.wav',	-- Let us attack
		smoke = false,
		relative = false,
		action = 'clone',
	},
}

-- "Boats" category
spawnable.boats = {
	['Kirov'] = {
		name = 'Kirov-1',
		description = 'CGN 1144.2 Pyotr Velikiy Kirov',
		sound = 'tbardy00.wav', -- Cattlebruiser Operational
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['Kuznetsov'] = {
		name = 'Kuznetsov-1',
		description = 'CV 1143.5 Admiral Kuznetsov (2017)',
		sound = 'pcaRdy00.wav', -- Carrier has arrived
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
	['4x Cargo Ships'] = {
		name = 'Cargo-1',
		description = '4x Unarmed Cargo Ships',
		sound = 'pprRdy00.wav',
		smoke = 'red',
		relative = false,
		action = 'clone',
	},
}

-- "AWACS" category
spawnable.awacs = {
	['A-50'] = {
		name = 'A-50 1',
		description = 'A-50 AWACS at 35,000ft',
		sound = 'pabYes01.wav',
		smoke = false,
		relative = true,
		action = 'clone',
	},
}
		

-- "AWACS" friendly category
spawnable.fawacs = {
	['E-3A Sentry'] = {
		name = 'E-3A 1',
		description = 'E-3A Sentry at 35,000ft. Contact "Overlord" on 140.0',
		sound = 'pabRdy00.wav', -- Warp Field Stabilized
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['E-2D Hawkeye'] = {
		name = 'E-2D 1',
		description = 'E-2D Hawkeye at 30,000ft. Contact "Magic" on 141.0',
		sound = 'pabPss00.wav', -- We sense a soul in search of answers
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

-- "Boats" friendly category
spawnable.fboats = {
	['CVN-74 John C. Stennis'] = {
		name = 'CVN-74 John C. Stennis 1',
		description = 'CVN-74 John C. Stennis. ATC 127, TCN 74, ICLS 7',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CVN-73 George Washington'] = {
		name = 'CVN-73 George Washington 1',
		description = 'CVN-73 George Washington. ATC 129, TCN 73, ICLS 8',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CV 1143.5 Admiral Kuznetsov (2017)'] = {
		name = 'Super Kuznetsov 1',
		description = 'CV 1143.5 Admiral Kuznetsov (2017). ATC 128',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['CV 1143.5 Admiral Kuznetsov'] = {
		name = 'Kuznetsov 1',
		description = 'CV 1143.5 Admiral Kuznetsov. ATC 126',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['LHA Tarawa'] = {
		name = 'LHA-1 Tarawa 1',
		description = 'LHA Tarawa. ATC 125, TCN 76, ICLS 5',
		sound = 'pcaRdy00.wav',
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

-- "Tankers" friendly category
spawnable.ftankers = {
	['Basket KC-130'] = {
		name = 'Texaco 1',
		description = 'KC-130 (Basket) Tanker, 255KIAS at 15,000ft. Contact on 130.0, TCN 30X',
		sound = 'TDrPss01.wav', -- In case of a water landing, you may be used as a flotation device
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket KC-135MPRS '] = {
		name = 'Texaco 2',
		description = 'KC-135MPRS (Basket) Tanker, 270KIAS at 25,000ft. Contact on 131.0, TCN 31X',
		sound = 'TDrPss02.wav', -- To hurl chunks, please use the vomit bag in front of you
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket S-3B '] = {
		name = 'Texaco 3',
		description = 'S-3B (Basket) Tanker, 270KIAS at 25,000ft. Contact on 132.0, TCN 32X',
		sound = 'TDrPss03.wav', -- Keep your arms and legs inside
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Boom KC-135 (Fast)'] = {
		name = 'Shell 1',
		description = 'KC-135 (Boom) Tanker, 270KIAS at 25,000ft. Contact on 133.0, TCN 33X',
		sound = 'TDrYes00.wav', -- In the pipe, 5x5
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Boom KC-135 (Slow)'] = {
		name = 'Shell 2',
		description = 'KC-135 (Boom) Tanker, 220KIAS at 10,000ft. Contact on 134.0, TCN 34X',
		sound = 'TDrYes04.wav', -- Strap yourselves in boys
		smoke = false,
		relative = true,
		action = 'respawn',
	},
	['Basket Il-78M'] = {
		name = 'Texaco 4',
		description = 'Il-78M (Basket) Tanker, 270KIAS at 25,000ft. Contact on 135.0, No TCN',
		sound = 'tvkpss00.wav', -- This is very interesting, but stupid
		smoke = false,
		relative = true,
		action = 'respawn',
	},
}

---------- END 05_spawnable_units.lua ----------

---------- BEGIN 06_spawn_engine.lua ----------

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
		newRoute[i].x = wp.x + Xdiff
		newRoute[i].y = wp.y + Ydiff			
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

---------- END 06_spawn_engine.lua ----------

---------- BEGIN 07_radio_menu.lua ----------

local function addRadioMenus()

	--timer.scheduleFunction(addHostileMenu, nil, timer.getTime() + 10)
	
	--dumper(mist.DBs.unitsById)
	env.info((type(mist.DBs.unitsById)))
	
	for unitId,unit in pairs(mist.DBs.unitsById) do
	
		--local unit = mist.DBs.unitsById[i]
		
		if unit and unit.coalition == 'blue' then
			--env.info((string.format("Unit %d %s -- Group %d %s", unit.unitId, unit.unitName, unit.groupId, unit.groupName)))			
			groupId = unit.groupId
			
			-- Radio Top Level Menu
			local FriendlyMenu		= missionCommands.addSubMenuForGroup(groupId,"Spawn Friendly",nil)
			local HostileMenu		= missionCommands.addSubMenuForGroup(groupId,"Spawn Hostile",nil)

			-- Second Level: Categories
			local FTankerMenu 		= missionCommands.addSubMenuForGroup(groupId,"Tankers",FriendlyMenu)
			local FAWACSMenu 		= missionCommands.addSubMenuForGroup(groupId,"AWACS",FriendlyMenu)
			local FBoatMenu			= missionCommands.addSubMenuForGroup(groupId,"Boats",FriendlyMenu)
			
			local ArmorMenu 		= missionCommands.addSubMenuForGroup(groupId,"Armor",HostileMenu)
			local InfantryMenu		= missionCommands.addSubMenuForGroup(groupId,"Infantry",HostileMenu)
			local AirDefenceMenu	= missionCommands.addSubMenuForGroup(groupId,"Air Defenses",HostileMenu)
			local ModernFighterMenu = missionCommands.addSubMenuForGroup(groupId,"Modern Fighters",HostileMenu)
			local WarBirdMenu		= missionCommands.addSubMenuForGroup(groupId,"Warbirds",HostileMenu)
			local HelicopterMenu	= missionCommands.addSubMenuForGroup(groupId,"Helicopters",HostileMenu)
			local AWACSMenu 		= missionCommands.addSubMenuForGroup(groupId,"AWACS",HostileMenu)
			local BoatMenu			= missionCommands.addSubMenuForGroup(groupId,"Boats",HostileMenu)

			-- Third Level: Groups
			for key in pairs(spawnable.ftankers) 	do missionCommands.addCommandForGroup(groupId, key, FTankerMenu,  			
				function() spawnUnit({unit=unitId, group=spawnable.ftankers[key], category='air', sound=true}) end) end	
			for key in pairs(spawnable.fawacs) 		do missionCommands.addCommandForGroup(groupId, key, FAWACSMenu,  			
				function() spawnUnit({unit=unitId, group=spawnable.fawacs[key], category='air', sound=true}) end) end	
			for key in pairs(spawnable.fboats) 		do missionCommands.addCommandForGroup(groupId, key, FBoatMenu,  			
				function() spawnUnit({unit=unitId, group=spawnable.fboats[key], category='air', sound=true}) end) end	
				
			for key in pairs(spawnable.armor) 		do missionCommands.addCommandForGroup(groupId, key, ArmorMenu,  			
				function() spawnUnit({unit=unitId, group=spawnable.armor[key], category='land', sound=true}) end) end
			for key in pairs(spawnable.infantry)	do missionCommands.addCommandForGroup(groupId, key, InfantryMenu,  		
				function() spawnUnit({unit=unitId, group=spawnable.infantry[key], category='land', sound=true}) end) end
			for key in pairs(spawnable.airdefences) do missionCommands.addCommandForGroup(groupId, key, AirDefenceMenu,  	
				function() spawnUnit({unit=unitId, group=spawnable.airdefences[key], category='land', sound=true}) end) end
			for key in pairs(spawnable.fighters) 	do missionCommands.addCommandForGroup(groupId, key, ModernFighterMenu,  	
				function() spawnUnit({unit=unitId, group=spawnable.fighters[key], category='air', sound=true}) end) end
			for key in pairs(spawnable.warbirds) 	do missionCommands.addCommandForGroup(groupId, key, WarBirdMenu,  		
				function() spawnUnit({unit=unitId, group=spawnable.warbirds[key], category='air', sound=true}) end) end
			for key in pairs(spawnable.helicopters)	do missionCommands.addCommandForGroup(groupId, key, HelicopterMenu,  	
				function() spawnUnit({unit=unitId, group=spawnable.helicopters[key], category='air', sound=true}) end) end
			for key in pairs(spawnable.awacs)	do missionCommands.addCommandForGroup(groupId, key, AWACSMenu,  	
				function() spawnUnit({unit=unitId, group=spawnable.awacs[key], category='air', sound=true}) end) end
			for key in pairs(spawnable.boats)		do missionCommands.addCommandForGroup(groupId, key, BoatMenu,  			
				function() spawnUnit({unit=unitId, group=spawnable.boats[key], category='water', sound=true}) end) end
				

		end
	end
end

addRadioMenus()

---------- END 07_radio_menu.lua ----------

---------- BEGIN 08_respawn_listener.lua ----------

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


---------- END 08_respawn_listener.lua ----------

local loadedMsg = {}
loadedMsg.text = 'Loaded Sandbox Version 1 (2020-10-04)'
loadedMsg.displayTime = 5
loadedMsg.msgFor = {coa = {'all'}}
mist.message.add(loadedMsg)
