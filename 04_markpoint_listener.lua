markPoint = {}
aPoint = {}
bPoint = {}

local function onMark(event)    
	if ( event.id == world.event.S_EVENT_MARK_ADDED ) then
		trigger.action.outSound("l10n/DEFAULT/TGoYes01.wav")
	end
	if ( event.id == world.event.S_EVENT_MARK_REMOVED ) then

        if ( event.pos ) then
            local markMsg = {}
	
            if ( event.text and event.text:len() > 0 ) then
                local name = event.text
                if ( name:upper() == "A" ) then 
                    aPoint = event.pos
                    markMsg.text = string.format('Orbit Point A Coordinates Recorded: %0.2f, %0.2f', event.pos.x, event.pos.z) 
                elseif ( name:upper() == "B" ) then 
                    bPoint = event.pos
                    markMsg.text = string.format('Orbit Point B Coordinates Recorded: %0.2f, %0.2f', event.pos.x, event.pos.z) 
                else 
                    markMsg.text = "Unrecognized name. Mark Point was not captured."
                end

            else
                markPoint = event.pos
			    markMsg.text = string.format('Spawn Coordinates Recorded: %s, %s', event.pos.x, event.pos.z) 
            end

			markMsg.displayTime = 10
			markMsg.msgFor = {coa = {'all'}} 
			mist.message.add(markMsg)
			
			trigger.action.outSound("l10n/DEFAULT/TGoYes03.wav")
		end		
	end    
end


mist.addEventHandler(onMark)   
