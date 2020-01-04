starting_edit_select_mode = "start_with_edit_wands_everywhere"

starting_edit_mode = {
    {
        name = "start_with_all_perks",
        perks = {
            "CRITICAL_HIT",
            "BREATH_UNDERWATER",
            "EXTRA_MONEY",
            "EXTRA_MONEY_TRICK_KILL",
            "HOVER_BOOST",
            "MOVEMENT_FASTER",
            "LOW_GRAVITY",
            "SPEED_DIVER",
            "STRONG_KICK",
            "REPELLING_CAPE",
            "EXPLODING_CORPSES",
            "SAVING_GRACE",
            "INVISIBILITY",
            "GLOBAL_GORE",
            "REMOVE_FOG_OF_WAR",
            "VAMPIRISM",
            "EXTRA_HP",
            "HEARTS_MORE_EXTRA_HP",
            "GLASS_CANNON",
            "RESPAWN",
            "WORM_ATTRACTOR",
            "WORM_DETRACTOR",
            "PROTECTION_FIRE",
            "PROTECTION_RADIOACTIVITY",
            "PROTECTION_EXPLOSION",
            "PROTECTION_MELEE",
            "PROTECTION_ELECTRICITY",
            "TELEPORTITIS",
            "STAINLESS_ARMOUR",
            "EDIT_WANDS_EVERYWHERE",
            "ABILITY_ACTIONS_MATERIALIZED",
            "PROJECTILE_HOMING",
            "PROJECTILE_HOMING_SHOOTER",
            "FREEZE_FIELD",
            "DISSOLVE_POWDERS",
            "BLEED_SLIME",
            "BLEED_OIL",
            "SHIELD",
            "REVENGE_EXPLOSION",
            "REVENGE_TENTACLE",
            "ATTACK_FOOT",
            "PLAGUE_RATS",
            "PROJECTILE_REPULSION",
            "ELECTRICITY",
            "ATTRACT_ITEMS",
            "EXTRA_KNOCKBACK",
            "LOWER_SPREAD",
            "BOUNCE",
            "EXTRA_PERK",
            "PERKS_LOTTERY",
            "GENOME_MORE_HATRED",
            "GENOME_MORE_LOVE",
        },
    },
    {
        name = "start_with_a_random_perk",
        perks = {
            "random",
        },
    },
    {
        name = "start_with_edit_wands_everywhere",
        perks = {
            "EDIT_WANDS_EVERYWHERE",
        },
    },
    {
        name = "start_with_chest",
        chest = 1,
        super_chest = 0,
    },

    {
        name = "creative_wand",
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"creative_wand"},
                deck_capacity = 16,
                actions_per_round = 1,
                reload_time = 20,
                shuffle_deck_when_empty = 0,
                fire_rate_wait = 16,
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = 200,
                mana_max = 1200,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"creative_wand"},
                deck_capacity = 16,
                actions_per_round = 1,
                reload_time = 20,
                shuffle_deck_when_empty = 1,
                fire_rate_wait = 16,
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = 200,
                mana_max = 1200,
            },
            {
                sprite = "data/entities/items/wand_level_03_p.xml",
                name = {"creative_wand"},
                deck_capacity = 16,
                actions_per_round = 8,
                reload_time = 20,
                shuffle_deck_when_empty = 0,
                fire_rate_wait = 16,
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = 200,
                mana_max = 1200,
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            }
        },
        perks = {
            "EDIT_WANDS_EVERYWHERE",
        },
        all_spell = 2,
    },
    {
        name = "beginner",
        guns = {
            "data/entities/items/starting_wand.xml",
            "data/entities/items/starting_bomb_wand.xml",
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 2,
            }
        },
        perks = {
            "EXTRA_HP",
            "EXTRA_HP",
            "EXTRA_PERK",
        },
    },
    {
        name = "red_comet",
        -- cape colour uses ABGR
        cape_cloth_color = 0xFF01027C,
        cape_cloth_color_edge = 0xFF141156,
        perks = {
            "HOVER_BOOST",
            "HOVER_BOOST",
            "HOVER_BOOST",
            "MOVEMENT_FASTER",
            "MOVEMENT_FASTER",
            "MOVEMENT_FASTER",
        },
    },

    {
        name = "Ninja Type",
        items = {
            {
                options = "data/entities/_debug/knife_pickupable.xml",
                amount = 4,
            },
        },
        perks = {
            "MOVEMENT_FASTER",
            "SPEED_DIVER",
            "REMOVE_FOG_OF_WAR",
        },
    },
    {
        name = "Hunter Type",
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"hunter_wand"},
                deck_capacity = 3,
                actions_per_round = 1,
                reload_time = 6,
                shuffle_deck_when_empty = 0,
                fire_rate_wait = 40,
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = 50,
                mana_max = 200,
                actions = {"ARROW"},
                modifiers = {"WATER_TO_POISON", "SPEED", "SPEED", "SPEED", "SPEED", "SPEED"},
                permanent_actions = {"GRAVITY"},
                action_count = 1,
                modifier_count = 1,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"hunter_wand"},
                deck_capacity = 1,
                actions = {"EXPLODING_DEER"},
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            },
            {
                options = "mods/starting_edit/items/potion_invisibility.xml",
                amount = 1,
            },
        },
        perks = {
            "CRITICAL_HIT",
        },
    },
    {
        name = "Bomber Type",
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"bomber_wand"},
                deck_capacity = 1,
                actions = {"EXPLOSION"},
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"bomber_wand"},
                deck_capacity = 2,
                actions = {"DYNAMITE"},
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            },
            {
                options = "mods/starting_edit/items/potion_berserk.xml",
                amount = 1,
            },
        },
        perks = {
            "PROTECTION_EXPLOSION",
            "EXPLODING_CORPSES",
            "REVENGE_EXPLOSION",
        },
    },
    {
        name = "Melee Type",
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"melee_wand"},
                deck_capacity = 1,
                actions = {"LUMINOUS_DRILL"},
                permanent_actions = {"HORIZONTAL_ARC"},
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"melee_wand"},
                deck_capacity = 1,
                actions = {"BLACK_HOLE"},
            },
            {
                sprite = "data/entities/items/wand_level_03_p.xml",
                name = {"melee_wand"},
                deck_capacity = 3,
                actions = {"REGENERATION_FIELD"},
                action_count = 1,
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            },
        },
        perks = {
            "PROTECTION_MELEE",
            "STRONG_KICK",
        },
    },
    {
        name = "Vampire Type",
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"vampire_wand"},
                deck_capacity = {2, 3},
                actions = {"DISC_BULLET"},
                modifiers = {"HITFX_CRITICAL_BLOOD"},
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"vampire_wand"},
                deck_capacity = 1,
                actions = {"TELEPORT_PROJECTILE"},
            },
        },
        items = {
            {
                options = "mods/starting_edit/items/potion_blood.xml",
                amount = 2,
            },
            {
                options = "mods/starting_edit/items/potion_invisibility.xml",
                amount = 1,
            },
        },
        perks = {
            "VAMPIRISM",
            "GLOBAL_GORE",
            "LOW_GRAVITY",
            "REPELLING_CAPE",
        },
    },

    -- starting_loadouts --
    {
        name = "Summoner TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff60a1a2,
        cape_cloth_color_edge = 0xff3c696a,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"summoner_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 2,
                reload_time = {30, 50},
                shuffle_deck_when_empty = 1,
                fire_rate_wait = {30, 50},
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = {170, 190},
                mana_max = {220, 260},
                actions = {"PEBBLE"},
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"summoner_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 1,
                reload_time = {30, 50},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {30, 50},
                spread_degrees = {5, 10},
                speed_multiplier = 1,
                mana_charge_speed = {15, 35},
                mana_max = {120, 150},
                permanent_actions = {"SUMMON_ROCK"},
                special_permanent_actions = {"SUMMON_EGG"},
                special_permanent_actions_chances = 0,
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            },
            {
                options = {
                    "data/entities/items/pickup/egg_fire.xml",
                    "data/entities/items/pickup/egg_red.xml",
                    "data/entities/items/pickup/egg_monster.xml",
                    "data/entities/items/pickup/egg_slime.xml"
                },
                amount = 3,
            },
        },
    },
    {
        name = "Fire TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff5a60dd,
        cape_cloth_color_edge = 0xff3e43af,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"fire_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 1,
                reload_time = {4, 10},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {5, 10},
                spread_degrees = {0, 4},
                speed_multiplier = 1,
                mana_charge_speed = {20, 40},
                mana_max = {120, 160},
                actions = {"FIREBOMB", "GRENADE"},
                modifiers = {"FIRE_TRAIL", "OIL_TRAIL", "BURN_TRAIL"},
                special_permanent_actions = {"FIRE_TRAIL", "OIL_TRAIL", "BURN_TRAIL"},
                action_count = 1,
                modifier_count = {1, 2},
                special_permanent_actions_chances = 40,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"fire_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 1,
                reload_time = {35, 65},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {35, 65},
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = {20, 40},
                mana_max = {130, 160},
                actions = {"FIREBALL", "ROCKET"},
                modifiers = {"TORCH"},
                special_permanent_actions = {"OIL_TRAIL"},
                modifier_count = {0, 1},
                special_permanent_actions_chances = 2,
            },
        },
        items = {
            {
                options = "mods/starting_edit/items/potion_fire.xml",
                amount = 2,
            },
        },
        perks = {
            "PROTECTION_FIRE",
            "BLEED_OIL",
        },
    },
    {
        name = "Slime TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff9a6f9b,
        cape_cloth_color_edge = 0xff76547f,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"slime_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 1,
                reload_time = {10, 30},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {5, 10},
                spread_degrees = {0, 5},
                speed_multiplier = 1,
                mana_charge_speed = {20, 40},
                mana_max = {90, 140},
                actions = {"MIST_SLIME"},
                modifiers = {"LIGHT_BULLET_TIMER", "LIGHT_BULLET_TRIGGER"},
                action_count = 1,
                modifier_count = 1,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"slime_wand"},
                deck_capacity = {3, 4},
                actions_per_round = 1,
                reload_time = {30, 60},
                shuffle_deck_when_empty = 1,
                fire_rate_wait = {20, 40},
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = {20, 40},
                mana_max = {120, 160},
                actions = {"SLIMEBALL", "ACIDSHOT"},
                modifiers = {"SPEED"},
                permanent_actions = {"HITFX_EXPLOSION_SLIME"},
                action_count = 1,
                modifier_count = 1,
            },
            {
                sprite = "data/entities/items/wand_level_03_p.xml",
                name = {"slime_wand"},
                deck_capacity = 1,
                actions_per_round = 1,
                reload_time = 1,
                shuffle_deck_when_empty = 0,
                fire_rate_wait = 1,
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = 20,
                mana_max = 40,
                actions = {"HITFX_EXPLOSION_SLIME_GIGA"},
                action_count = 1,
            },
        },
        items = {
            {
                options = "mods/starting_edit/items/potion_slime.xml",
                amount = 2,
            }
        },
        perks = {
            "BLEED_SLIME",
        },
    },
    {
        name = "Thunder TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff9d7b4d,
        cape_cloth_color_edge = 0xff846235,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"thunder_wand"},
                deck_capacity = {1, 2},
                actions_per_round = 1,
                reload_time = {70, 100},
                shuffle_deck_when_empty = 1,
                fire_rate_wait = {50, 90},
                spread_degrees = {3, 9},
                speed_multiplier = 1,
                mana_charge_speed = {25, 35},
                mana_max = {120, 140},
                actions = {"LIGHTNING", "THUNDERBALL"},
                modifiers = {"ELECTRIC_CHARGE", "TORCH_ELECTRIC"},
                action_count = 1,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"thunder_wand"},
                deck_capacity = {3, 4},
                actions_per_round = 1,
                reload_time = {30, 50},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {10, 45},
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = {10, 30},
                mana_max = {140, 170},
                actions = {"ELECTROCUTION_FIELD","THUNDER_BLAST","PROJECTILE_THUNDER_FIELD"},
                modifiers = {"SPITTER_TIMER", "SLOW_BULLET_TIMER", "LIGHT_BULLET_TIMER"},
                action_count = 1,
                modifier_count = 1,
            },
        },
        items = {
            {
                options = "data/entities/items/pickup/thunderstone.xml",
                amount = 1,
            },
        },
        perks = {
            "ELECTRICITY",
        },
    },
    {
        name = "Eldritch TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff7d4e53,
        cape_cloth_color_edge = 0xff6b4144,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"eldritch_wand"},
                deck_capacity = {2, 3},
                actions_per_round = {1, 2},
                reload_time = {30, 40},
                shuffle_deck_when_empty = 1,
                fire_rate_wait = {20, 30},
                spread_degrees = {3, 8},
                speed_multiplier = 0.75,
                mana_charge_speed = {10, 30},
                mana_max = {100, 120},
                actions = {"TENTACLE_TIMER", "TENTACLE", "TENTACLE", "TENTACLE", "TENTACLE", "TENTACLE"},
                action_count = {1, 2},
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"eldritch_wand"},
                deck_capacity = 1,
                actions_per_round = 1,
                reload_time = {85, 105},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {65, 85},
                spread_degrees = 0,
                speed_multiplier = 1,
                mana_charge_speed = {10, 20},
                mana_max = 200,
                actions = {"TENTACLE_PORTAL"},
                action_count = 1,
            },
        },
        items = {
            {
                options = "mods/starting_edit/items/potion_teleport.xml",
                amount = 1,
            },
            {
                options = "data/entities/items/pickup/potion_water.xml",
                amount = 1,
            },
        },
        perks = {
            "REVENGE_TENTACLE",
        },
    },
    {
        name = "Butcher TYPE",
        -- cape colour uses ABGR
        cape_cloth_color = 0xff4f626b,
        cape_cloth_color_edge = 0xff465258,
        guns = {
            {
                sprite = "data/entities/items/wand_level_01_p.xml",
                name = {"butcher_wand"},
                deck_capacity = {2, 3},
                actions_per_round = 1,
                reload_time = 15,
                shuffle_deck_when_empty = 1,
                fire_rate_wait = {30, 50},
                spread_degrees = {1, 4},
                speed_multiplier = 1,
                mana_charge_speed = {25, 45},
                mana_max = {80, 120},
                actions = {"LUMINOUS_DRILL", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW", "CHAINSAW"},
                action_count = 1,
            },
            {
                sprite = "data/entities/items/wand_level_02_p.xml",
                name = {"butcher_wand"},
                deck_capacity = {3, 4},
                actions_per_round = 1,
                reload_time = {20, 50},
                shuffle_deck_when_empty = 0,
                fire_rate_wait = {20, 45},
                spread_degrees = {2, 5},
                speed_multiplier = {1.0, 1.5},
                mana_charge_speed = {15, 35},
                mana_max = {110, 140},
                actions = {"DISC_BULLET_BIG", "DISC_BULLET", "DISC_BULLET"},
                action_count = 2,
            },
        },
        items = {
            {
                options = "mods/starting_edit/items/potion_berserk.xml",
                amount = 1,
            },
            {
                options = "mods/starting_edit/items/potion_blood.xml",
                amount = 1,
            },
        },
        perks = {
            "GLOBAL_GORE",
            "STRONG_KICK",
        },
    },
}
