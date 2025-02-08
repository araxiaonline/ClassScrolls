local ITEM_ENTRY = 500515 -- Soothsayer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        darkened_vision = 8675480,
        dark_whispers = 8675483,
        impending_coma = 8675486,
        time_lapse = 8675489
    },
    [2] = { -- Paladin (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [3] = { -- Hunter (Mana/Focus)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [4] = { -- Rogue (Energy)
        darkened_vision = 8675481,
        dark_whispers = 8675484,
        impending_coma = 8675487,
        time_lapse = 8675490
    },
    [5] = { -- Priest (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [6] = { -- Death Knight (Runic Power)
        darkened_vision = 8675482,
        dark_whispers = 8675485,
        impending_coma = 8675488,
        time_lapse = 8675491
    },
    [7] = { -- Shaman (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [8] = { -- Mage (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [9] = { -- Warlock (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    },
    [11] = { -- Druid (Mana)
        darkened_vision = 5514,
        dark_whispers = 16587,
        impending_coma = 34800,
        time_lapse = 51020
    }
}

-- Function triggered when the item is used
local function OnUseSoothsayerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the prophetic powers of the Soothsayer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the visions of the Soothsayer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseSoothsayerScroll)
