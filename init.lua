dofile("mods/starting_edit/config.lua")
dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/gun/procedural/gun_action_utils.lua")
dofile("data/scripts/perks/perk.lua")
dofile("data/scripts/perks/perk_list.lua")

function get_random_from(target)
    if (type(target) ~= "table") then
        return target
    end

    if (#target == 0) then
        return nil
    end
	return target[Random(1, #target)]
end

function get_random_between_range(target, r)
    if (type(target) ~= "table") then
        return target
    end

    if (#target == 1) then
        return target[1]
    end
    r = r or 1
	return Random(target[1] * r, target[2] * r) / r
end

function generate_gun(gun)
    if (type(gun) ~= "table") then
        return EntityLoad(gun)
    end

    -- local entity_id = GetUpdatedEntityID()
    local entity_id = EntityLoad(gun.sprite)
	local actions = EntityGetAllChildren(entity_id)
	if (actions ~= nil) then
        for _, action in ipairs(actions) do
            EntityKill(action)
        end
    end

    local x, y = EntityGetTransform(entity_id)
    SetRandomSeed(x, y)

    local name = get_random_from(gun.name)
    local deck_capacity = get_random_between_range(gun.deck_capacity)
    local actions_per_round = get_random_between_range(gun.actions_per_round)
    local reload_time = get_random_between_range(gun.reload_time)
    local shuffle_deck_when_empty = get_random_between_range(gun.shuffle_deck_when_empty)
    local fire_rate_wait = get_random_between_range(gun.fire_rate_wait)
    local spread_degrees = get_random_between_range(gun.spread_degrees)
    local speed_multiplier = get_random_between_range(gun.speed_multiplier, 100)
    local mana_charge_speed = get_random_between_range(gun.mana_charge_speed)
    local mana_max = get_random_between_range(gun.mana_max)

    local ability_comp = EntityGetFirstComponent(entity_id, "AbilityComponent")
    ComponentSetValue(ability_comp, "ui_name", name)
    ComponentObjectSetValue(ability_comp, "gun_config", "deck_capacity", deck_capacity)
    ComponentObjectSetValue(ability_comp, "gun_config", "actions_per_round", actions_per_round)
    ComponentObjectSetValue(ability_comp, "gun_config", "reload_time", reload_time)
    ComponentObjectSetValue(ability_comp, "gun_config", "shuffle_deck_when_empty", shuffle_deck_when_empty)
    ComponentObjectSetValue(ability_comp, "gunaction_config", "fire_rate_wait", fire_rate_wait)
    ComponentObjectSetValue(ability_comp, "gunaction_config", "spread_degrees", spread_degrees)
    ComponentObjectSetValue(ability_comp, "gunaction_config", "speed_multiplier", speed_multiplier)
    ComponentSetValue(ability_comp, "mana_charge_speed", mana_charge_speed)
    ComponentSetValue(ability_comp, "mana_max", mana_max)
    ComponentSetValue(ability_comp, "mana", mana_max)

    local action_count = math.min(deck_capacity, get_random_between_range(gun.action_count) or get_random_between_range(deck_capacity))

    local modifier_max = deck_capacity - action_count
    local modifier_count = math.min(modifier_max, get_random_between_range(gun.modifier_count) or modifier_max)
    if (gun.modifiers ~= nil) then
        for _ = 1, modifier_count do
            local gun_modifier = get_random_from(gun.modifiers)
            AddGunAction(entity_id, gun_modifier)
        end
    end

    local gun_action = get_random_from(gun.actions)
    if (gun_action ~= nil) then
        for _ = 1, action_count do
            AddGunAction(entity_id, gun_action)
        end
    end

    if (gun.special_action_permanents_chances ~= nil and gun.special_action_permanents_chances > 0) then
        local gun_action_permanent = get_random_from(gun.special_action_permanents)
        if (gun_action_permanent ~= nil) then
            AddGunActionPermanent(entity_id, gun_action_permanent)
            ComponentObjectSetValue(ability_comp, "gun_config", "deck_capacity", deck_capacity + 1)
        end
    else
        local gun_action_permanent = get_random_from(gun.action_permanents)
        if (gun_action_permanent ~= nil) then
            AddGunActionPermanent(entity_id, gun_action_permanent)
            ComponentObjectSetValue(ability_comp, "gun_config", "deck_capacity", deck_capacity + 1)
        end
    end

    return entity_id
end

function OnPlayerSpawned(player_entity) -- this runs when player entity has been created
	local init_check_flag = "start_edit_init_done"
	if GameHasFlagRun(init_check_flag) then
		return
	end
	GameAddFlagRun(init_check_flag)

   	local inventory
    local inventory_items
    local cape
    local player_arm
    local player_child_entities = EntityGetAllChildren(player_entity)
	if (player_child_entities ~= nil) then
		for _, child_entity in ipairs(player_child_entities) do
			local child_entity_name = EntityGetName(child_entity)

			if (child_entity_name == "inventory_quick") then
				inventory = child_entity
			end

			if (child_entity_name == "cape") then
				cape = child_entity
			end

			if (child_entity_name == "arm_r") then
				player_arm = child_entity
			end
		end
	end
	if (inventory ~= nil) then
        inventory_items = EntityGetAllChildren(inventory)
    end

    -- MODE SELECT --
    starting_edit_select_mode = get_random_from(starting_edit_select_mode)
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

    -- remove
    if (select.guns ~= nil or select.items ~= nil) then
        if inventory_items ~= nil then
            for _, entity_id in ipairs(inventory_items) do
                GameKillInventoryItem(player_entity, entity_id)
            end
        end
    end

    -- GUN --
    if (select.guns ~= nil) then
        for _, gun in ipairs(select.guns) do
            local entity_id = generate_gun(gun)
            if entity_id then
                EntityAddChild(inventory, entity_id)
            end
        end
    end

    -- ITEM --
    if (select.items ~= nil) then
        for _, item in ipairs(select.items) do
            local amount = get_random_between_range(item.amount) or 1
            for _ = 1, amount do
                local entity_id = EntityLoad(get_random_from(item.options))
                EntityAddChild(inventory, entity_id)
            end
        end
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

    -- TREASURE CHEST --
    local dx = 50
    local dy = 5
    if (select.chest ~= nil) then
        for _ = 1, select.chest do
            if (Random(1, 8192) == 1) then
                EntityLoad("data/entities/animals/chest_mimic.xml", x - dx, y + dy)
            else
                EntityLoad("data/entities/items/pickup/chest_random.xml", x - dx, y + dy)
            end
            dx = dx + 20
        end
    end
    if (select.super_chest ~= nil) then
        for _ = 1, select.super_chest do
            EntityLoad("data/entities/items/pickup/chest_random_super.xml", x - dx, y + dy)
            dx = dx + 20
        end
    end

	GamePrintImportant(select.name, "")
end