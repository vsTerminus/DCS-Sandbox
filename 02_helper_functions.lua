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
end

function sendError(errorText)
    local errorMsg = {}
    errorMsg.text = errorText
    errorMsg.displayTime = 10
	errorMsg.msgFor = {coa = {'all'}} 
	mist.message.add(errorMsg)
end

function getHeading(A, B)
    if (A.x and A.z and B.x and B.z) then
        return math.atan2( (B.z - A.z), (B.x - A.x) )
    end
end

function avgUnitsPos(units) 
    local avgX, avgY, avgZ, totNum = 0, 0, 0, 0
	for i = 1, #units do
		local nPoint = mist.utils.makeVec3(units[i])
		if nPoint.z then
			avgX = avgX + nPoint.x
			avgY = avgY + nPoint.y
			avgZ = avgZ + nPoint.z
			totNum = totNum + 1
		end
	end
	if totNum ~= 0 then
		return {x = avgX/totNum, y = avgY/totNum, z = avgZ/totNum}
	end
end 

function smokeAtCoords(point)
    env.info("Smoking at coords")
    if ( point.x and point.y and point.z ) then
        env.info("Looks like a valid vec3")
        trigger.action.smoke({x=point.x, y=point.y, z=point.z}, trigger.smokeColor.Red)
        env.info("Smoke dropped")
        env.info(string.format("Smoke dropped at %0.2f, %0.2f, %0.2f", point.x, point.y, point.z))
    end
end

			
