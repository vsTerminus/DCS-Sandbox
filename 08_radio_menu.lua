local function addRadioMenus()

    --timer.scheduleFunction(addHostileMenu, nil, timer.getTime() + 10)

    --dumper(mist.DBs.unitsById)
    env.info((type(mist.DBs.unitsById)))

    for unitId,unit in pairs(mist.DBs.unitsById) do

        --local unit = mist.DBs.unitsById[i]

        if unit and unit.coalition == 'blue' then
            --env.info((string.format("Unit %d %s -- Group %d %s", unit.unitId, unit.unitName, unit.groupId, unit.groupName)))			
            local groupId = unit.groupId
            local groupName = unit.groupName

            -- Friendly or Hostile, or "Spawn Near Me"
            local FriendlyMenu		= missionCommands.addSubMenuForGroup(groupId,"Spawn Friendly",nil)
            local HostileMenu		= missionCommands.addSubMenuForGroup(groupId,"Spawn Hostile",nil)           

            -- Magic Menu
            local MagicMenu         = missionCommands.addSubMenuForGroup(groupId,"Spawn Magic Tanker",nil)
            for key in pairs(spawnable.ftankers)    do missionCommands.addCommandForGroup(groupId, key, MagicMenu,
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], category='air', sound=true, magic=true}) end) 
            end
 
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
                function() spawnGroup({clientGroup=groupName, group=spawnable.ftankers[key], category='air', sound=true}) end) 
            end	
            for key in pairs(spawnable.fawacs) 		do missionCommands.addCommandForGroup(groupId, key, FAWACSMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.fawacs[key], category='air', sound=true}) end) 
            end	
            for key in pairs(spawnable.fboats) 		do missionCommands.addCommandForGroup(groupId, key, FBoatMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.fboats[key], category='air', sound=true}) end) 
            end		
            for key in pairs(spawnable.armor) 		do missionCommands.addCommandForGroup(groupId, key, ArmorMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.armor[key], category='land', sound=true}) end) 
            end
            for key in pairs(spawnable.infantry)	do missionCommands.addCommandForGroup(groupId, key, InfantryMenu,  		
                function() spawnGroup({clientGroup=groupName, group=spawnable.infantry[key], category='land', sound=true}) end) 
            end
            for key in pairs(spawnable.airdefences) do missionCommands.addCommandForGroup(groupId, key, AirDefenceMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.airdefences[key], category='land', sound=true}) end) 
            end
            for key in pairs(spawnable.fighters) 	do missionCommands.addCommandForGroup(groupId, key, ModernFighterMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.fighters[key], category='air', sound=true}) end) 
            end
            for key in pairs(spawnable.warbirds) 	do missionCommands.addCommandForGroup(groupId, key, WarBirdMenu,  		
                function() spawnGroup({clientGroup=groupName, group=spawnable.warbirds[key], category='air', sound=true}) end) 
            end
            for key in pairs(spawnable.helicopters)	do missionCommands.addCommandForGroup(groupId, key, HelicopterMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.helicopters[key], category='air', sound=true}) end) 
            end
            for key in pairs(spawnable.awacs)	do missionCommands.addCommandForGroup(groupId, key, AWACSMenu,  	
                function() spawnGroup({clientGroup=groupName, group=spawnable.awacs[key], category='air', sound=true}) end) 
            end
            for key in pairs(spawnable.boats)		do missionCommands.addCommandForGroup(groupId, key, BoatMenu,  			
                function() spawnGroup({clientGroup=groupName, group=spawnable.boats[key], category='water', sound=true}) end) 
            end


        end
    end
end

addRadioMenus()
