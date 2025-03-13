local groupsHandled = {}

local function onPlayerEnterUnit(event)
	if event.id == world.event.S_EVENT_PLAYER_ENTER_UNIT then
		local unit = event.initiator
        local group = unit:getGroup()
        local groupId = group:getID()

        if groupId and groupsHandled[groupId] == nil then
            addSandboxRadioMenusToGroup(group)
            table.insert(groupsHandled, groupId, true)
            trigger.action.outSound("l10n/DEFAULT/Grunt Birthday Party.ogg")
            env.info(string.format("Added sandbox radio menus to GroupID %s", groupId))
        elseif groupId and groupsHandled[groupId] then
            env.info(string.format("GroupID %s already has radio menus and will be skipped", groupId))
        elseif groupId == nil then
            env.info(string.format("Player entered a slot which does not have a GroupID"))
            dumper(event)
        end
	end
end

mist.addEventHandler(onPlayerEnterUnit)