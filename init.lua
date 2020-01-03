dofile("mods/starting_edit/config.lua")
dofile("data/scripts/perks/perk.lua")
dofile("data/scripts/perks/perk_list.lua")

function OnPlayerSpawned(player_entity) -- this runs when player entity has been created
	local init_check_flag = "start_edit_init_done"
	if GameHasFlagRun(init_check_flag) then
		return
	end
	GameAddFlagRun(init_check_flag)

    -- MODE SELECT --
    local select
    for _, mode in ipairs(starting_edit_mode) do
        if (mode.name == starting_edit_select_mode) then
            select = mode
            break
        end
    end
    if (select == nil) then
        select = get_random_from(starting_edit_mode)
    end

    -- PERK --
	local x, y = EntityGetTransform(player_entity)
	SetRandomSeed(x + 344, y - 523)

    if (select.perks ~= nil) then
        for _, perk_name in ipairs(select.perks) do
		    if (perk_name == "random") then
		        perk_name = get_random_from(perk_list)
		    end

            local perk_entity = perk_spawn(x, y, perk_name)
            if (perk_entity ~= nil) then
                perk_pickup(perk_entity, player_entity, EntityGetName(perk_entity), false, false)
            end
        end
    end

	GamePrintImportant(select.name, "")
end