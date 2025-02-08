local ITEM_ENTRY = 500510 -- Necromancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        cripple = 8675420,
        bone_armor = 8675423,
        power_release = 8675426,
        summon_skeleton = 8675429
    },
    [2] = { -- Paladin (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [3] = { -- Hunter (Mana/Focus)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [4] = { -- Rogue (Energy)
        cripple = 8675421,
        bone_armor = 8675424,
        power_release = 8675427,
        summon_skeleton = 8675430
    },
    [5] = { -- Priest (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [6] = { -- Death Knight (Runic Power)
        cripple = 8675422,
        bone_armor = 8675425,
        power_release = 8675428,
        summon_skeleton = 8675431
    },
    [7] = { -- Shaman (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [8] = { -- Mage (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [9] = { -- Warlock (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    },
    [11] = { -- Druid (Mana)
        cripple = 20812,
        bone_armor = 50324,
        power_release = 51431,
        summon_skeleton = 8853
    }
}

-- Function triggered when the item is used
local function OnUseNecromancerScroll(event, player, item, target)
    local class = player:GetClass() -- Get player's class ID
    local spells = SPELLS_BY_CLASS[class] -- Get spell list for the class

    if spells then
        local learned = false -- Track if any new spells are learned

        -- Loop through the spell list for the class
        for _, spell in pairs(spells) do
            if not player:HasSpell(spell) then
                player:LearnSpell(spell) -- Teach the spell
                learned = true
            end
        end

        if learned then
            player:RemoveItem(item:GetEntry(), 1) -- Consume the item
            player:SendBroadcastMessage("You have mastered the forbidden arts of the Necromancer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the powers of the Necromancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseNecromancerScroll)
