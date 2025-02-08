local ITEM_ENTRY = 500508 -- Hydromancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        water_nova = 8675396,
        tidal_burst = 39878,  -- Warriors don't have a custom version, defaulting to mana-based
        watery_grave = 8675402,
        water_blast = 8675405
    },
    [2] = { -- Paladin (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [3] = { -- Hunter (Mana/Focus)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [4] = { -- Rogue (Energy)
        water_nova = 8675397,
        tidal_burst = 8675400,
        watery_grave = 8675403,
        water_blast = 8675406
    },
    [5] = { -- Priest (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [6] = { -- Death Knight (Runic Power)
        water_nova = 8675398,
        tidal_burst = 8675401,
        watery_grave = 8675404,
        water_blast = 8675407
    },
    [7] = { -- Shaman (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [8] = { -- Mage (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [9] = { -- Warlock (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    },
    [11] = { -- Druid (Mana)
        water_nova = 38237,
        tidal_burst = 39878,
        watery_grave = 38049,
        water_blast = 54237
    }
}

-- Function triggered when the item is used
local function OnUseHydromancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have mastered the flowing power of the Hydromancer!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Hydromancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseHydromancerScroll)
