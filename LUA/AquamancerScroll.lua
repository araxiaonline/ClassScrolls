local ITEM_ENTRY = 500500 -- Aquamancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        frostbolt = 8675300,
        summon_aqua_guardian = 8675303,
        water_bolt = 8675306,
        aqua_jet = 8675309
    },
    [2] = { -- Paladin (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [3] = { -- Hunter (Mana/Focus)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [4] = { -- Rogue (Energy)
        frostbolt = 8675301,
        summon_aqua_guardian = 8675304,
        water_bolt = 8675307,
        aqua_jet = 8675310
    },
    [5] = { -- Priest (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [6] = { -- Death Knight (Runic Power)
        frostbolt = 8675302,
        summon_aqua_guardian = 8675305,
        water_bolt = 8675308,
        aqua_jet = 8675311
    },
    [7] = { -- Shaman (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [8] = { -- Mage (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [9] = { -- Warlock (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    },
    [11] = { -- Druid (Mana)
        frostbolt = 9672,
        summon_aqua_guardian = 8372,
        water_bolt = 71686,
        aqua_jet = 13586
    }
}

-- Function triggered when the item is used
local function OnUseAquamancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have learned the secrets of the Aquamancer!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Aquamancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseAquamancerScroll)
