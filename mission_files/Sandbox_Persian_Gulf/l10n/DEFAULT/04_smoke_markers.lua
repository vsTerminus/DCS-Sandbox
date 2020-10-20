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
