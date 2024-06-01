local function addRadioMenus()

    --timer.scheduleFunction(addHostileMenu, nil, timer.getTime() + 10)

    --dumper(mist.DBs.unitsById)
    env.info((type(mist.DBs.unitsById)))

    for unitId,unit in pairs(mist.DBs.unitsById) do

        --local unit = mist.DBs.unitsById[i]
       -- env.info(dumper(unit))
        --env.info((string.format("Looking at Group: %d %s", unit.groupId, unit.groupName)))

        if unit and unit.skill == 'Client' then
            --env.info("   Adding F10 Radio Menu to Group")
            env.info((string.format("Adding radio menu to Group: %d %s (%s)", unit.groupId, unit.groupName, unit.skill)))
            local groupId = unit.groupId
            local groupName = unit.groupName

            -- Top Level: Spawn Friendly, Spawn Hostile, Spawn Magic Tanker"
            local FriendlyMenu		    = missionCommands.addSubMenuForGroup(groupId,"Spawn Friendly",nil)
            local HostileMenu		    = missionCommands.addSubMenuForGroup(groupId,"Spawn Hostile",nil) 
			local SmokeMenu				= missionCommands.addSubMenuForGroup(groupId,"Spawn Smoke", nil)

            -- Magic Tanker Menu
            local MagicTankerMenu       = missionCommands.addSubMenuForGroup(groupId,"Spawn Magic Tanker",nil)
                local MTankerCircle     = missionCommands.addSubMenuForGroup(groupId,"Circle",MagicTankerMenu)
                local MTankerRacetrack  = missionCommands.addSubMenuForGroup(groupId,"Racetrack",MagicTankerMenu)

            for key in pairs(spawnable.ftankers)    do 
                missionCommands.addCommandForGroup(groupId, key, MTankerCircle,
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], sound=true, magic=true, circle=true}) end) 
                missionCommands.addCommandForGroup(groupId, key, MTankerRacetrack,
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], sound=true, magic=true, racetrack=true}) end) 
            end

            -- Magic Fighter Menu
            local MagicFighterMenu              = missionCommands.addSubMenuForGroup(groupId, "Spawn Magic Fighter",nil)
                local MagicModernFighterMenu    = missionCommands.addSubMenuForGroup(groupId, "Modern Fighter",MagicFighterMenu)
                local MagicWarbirdFighterMenu   = missionCommands.addSubMenuForGroup(groupId, "WWII Fighter",MagicFighterMenu)
            
            for key in pairs(spawnable.bfm) do
                missionCommands.addCommandForGroup(groupId, key, MagicModernFighterMenu,
                function() spawnGroup({clientGroup=groupName, group=spawnable.bfm[key], sound=true, magic=true, bfm=true}) end)
            end
 
            for key in pairs(spawnable.warbirdbfm) do
                missionCommands.addCommandForGroup(groupId, key, MagicWarbirdFighterMenu,
                function() spawnGroup({clientGroup=groupName, group=spawnable.warbirdbfm[key], sound=true, magic=true, bfm=true}) end)
            end
 
			-- Smoke Menu
			missionCommands.addCommandForGroup(groupId, "Spawn Red Smoke", SmokeMenu, function() spawnSmoke({color = 'red', minutes=20}) end)

            -- Second Level: Categories

            -- Friendly
            local FTankerMenu 		= missionCommands.addSubMenuForGroup(groupId,"Tankers",FriendlyMenu)
                local FTankerCircle     = missionCommands.addSubMenuForGroup(groupId,"Circle",FTankerMenu)
                local FTankerRacetrack  = missionCommands.addSubMenuForGroup(groupId,"Racetrack",FTankerMenu)
            local FAWACSMenu 		= missionCommands.addSubMenuForGroup(groupId,"AWACS",FriendlyMenu)
            local FBoatMenu			= missionCommands.addSubMenuForGroup(groupId,"Boats",FriendlyMenu)
			local FArmorMenu		= missionCommands.addSubMenuForGroup(groupId,"Armor",FriendlyMenu)

            -- Hostile
			local UnarmedMenu		= missionCommands.addSubMenuForGroup(groupId,"Unarmed",HostileMenu)
            local ArmorMenu 		= missionCommands.addSubMenuForGroup(groupId,"Armor",HostileMenu)
            local InfantryMenu		= missionCommands.addSubMenuForGroup(groupId,"Infantry",HostileMenu)
            local AirDefenceMenu	= missionCommands.addSubMenuForGroup(groupId,"Air Defenses",HostileMenu)
            local ModernFighterMenu = missionCommands.addSubMenuForGroup(groupId,"Modern Fighters",HostileMenu)
            local WarBirdMenu		= missionCommands.addSubMenuForGroup(groupId,"Warbirds",HostileMenu)
            local HelicopterMenu	= missionCommands.addSubMenuForGroup(groupId,"Helicopters",HostileMenu)
            local AWACSMenu 		= missionCommands.addSubMenuForGroup(groupId,"AWACS",HostileMenu)
            local BoatMenu			= missionCommands.addSubMenuForGroup(groupId,"Boats",HostileMenu)

            -- Third Level: Groups
            for key in pairs(spawnable.ftankers) 	do 
                missionCommands.addCommandForGroup(groupId, key, FTankerCircle,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], sound=true, circle=true}) end) 
                missionCommands.addCommandForGroup(groupId, key, FTankerRacetrack,
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], sound=true, racetrack=true}) end) 
            end	
            for key in pairs(spawnable.fawacs) 		do missionCommands.addCommandForGroup(groupId, key, FAWACSMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.fawacs[key], sound=true}) end) 
            end	
            for key in pairs(spawnable.fboats) 		do missionCommands.addCommandForGroup(groupId, key, FBoatMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.fboats[key], sound=true}) end) 
            end
			for key in pairs(spawnable.farmor) 		do missionCommands.addCommandForGroup(groupId, key, FArmorMenu,
                function() spawnGroup({clientGroup=groupName, group=spawnable.farmor[key], sound=true}) end) 
            end

			for key in pairs(spawnable.unarmed) 	do missionCommands.addCommandForGroup(groupId, key, UnarmedMenu,
                function() spawnGroup({clientGroup=groupName, group=spawnable.unarmed[key], sound=true}) end) 
            end
            for key in pairs(spawnable.armor) 		do missionCommands.addCommandForGroup(groupId, key, ArmorMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.armor[key], sound=true}) end) 
            end
            for key in pairs(spawnable.infantry)	do missionCommands.addCommandForGroup(groupId, key, InfantryMenu,  		
                function() spawnGroup({clientGroup=groupName, group=spawnable.infantry[key], sound=true}) end) 
            end
            for key in pairs(spawnable.airdefences) do missionCommands.addCommandForGroup(groupId, key, AirDefenceMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.airdefences[key], sound=true}) end) 
            end
            for key in pairs(spawnable.fighters) 	do missionCommands.addCommandForGroup(groupId, key, ModernFighterMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.fighters[key], sound=true}) end) 
            end
            for key in pairs(spawnable.warbirds) 	do missionCommands.addCommandForGroup(groupId, key, WarBirdMenu,  		
                function() spawnGroup({clientGroup=groupName, group=spawnable.warbirds[key], sound=true}) end) 
            end
            for key in pairs(spawnable.helicopters)	do missionCommands.addCommandForGroup(groupId, key, HelicopterMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.helicopters[key], sound=true}) end) 
            end
            for key in pairs(spawnable.awacs)	do missionCommands.addCommandForGroup(groupId, key, AWACSMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.awacs[key], sound=true}) end) 
            end
            for key in pairs(spawnable.boats)		do missionCommands.addCommandForGroup(groupId, key, BoatMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.boats[key], sound=true}) end) 
            end
        else
            if unit and unit.skill then
                env.info((string.format("Skipping Group: %d %s (%s)", unit.groupId, unit.groupName, unit.skill)))
            else
                env.info("Skipping Group with undefined skill")
            end
        end
    end
end

addRadioMenus()
