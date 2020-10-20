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
