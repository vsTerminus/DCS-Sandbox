markPoint = {}
aPoint = {}
bPoint = {}

local function onMark(event)    
	if ( event.id == world.event.S_EVENT_MARK_ADDED ) then
		trigger.action.outSound("l10n/DEFAULT/TGoYes01.wav")
    end

    -- Record coordinates when a markpoint is deleted
    if ( event.id == world.event.S_EVENT_MARK_REMOVED and event.pos ) then
        local markMsg = {}
        
        -- If the markpoint was given a name, only capture coords from expected names. Ignore others.
        if ( event.text and event.text:len() > 0 ) then
            local name = event.text
            if ( name:upper() == "A" ) then 
                aPoint = event.pos
                markMsg.text = string.format('Orbit Point A Coordinates Recorded: %0.2f, %0.2f', event.pos.x, event.pos.z) 
            elseif ( name:upper() == "B" ) then 
                bPoint = event.pos
                markMsg.text = string.format('Orbit Point B Coordinates Recorded: %0.2f, %0.2f', event.pos.x, event.pos.z) 
            end
        else
            markPoint = event.pos
            markMsg.text = string.format('Spawn Coordinates Recorded: %s, %s', markPoint.x, markPoint.z) 
        end

        -- Confirm coordinates received, if we captured any
        if ( markMsg.text ) then
            markMsg.displayTime = 10
            markMsg.msgFor = {coa = {'all'}}
            markMsg.sound = 'TGoYes03.wav'
            mist.message.add(markMsg)

            -- Temporary Fallback Method
            trigger.action.outText(string.format("%s", markMsg.text), markMsg.displayTime)
            --trigger.action.outSound("l10n/DEFAULT/TGoYes03.wav")
        end
    end		
end

mist.addEventHandler(onMark)   
