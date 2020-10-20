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
