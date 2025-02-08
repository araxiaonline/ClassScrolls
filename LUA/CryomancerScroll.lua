local ITEM_ENTRY = 500505 -- Cryomancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        frost_mist = 8675360,
        frost_armor = 8675363,
        frost_nova = 8675366,
        frost_shock = 8675369
    },
    [2] = { -- Paladin (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [3] = { -- Hunter (Mana/Focus)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [4] = { -- Rogue (Energy)
        frost_mist = 8675361,
        frost_armor = 8675364,
        frost_nova = 8675367,
        frost_shock = 8675370
    },
    [5] = { -- Priest (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [6] = { -- Death Knight (Runic Power)
        frost_mist = 8675362,
        frost_armor = 8675365,
        frost_nova = 8675368,
        frost_shock = 8675371
    },
    [7] = { -- Shaman (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [8] = { -- Mage (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [9] = { -- Warlock (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    },
    [11] = { -- Druid (Mana)
        frost_mist = 29292,
        frost_armor = 31256,
        frost_nova = 36989,
        frost_shock = 37865
    }
}

-- Function triggered when the item is used
local function OnUseCryomancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have mastered the chilling arts of the Cryomancer!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the icy power of the Cryomancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseCryomancerScroll)
