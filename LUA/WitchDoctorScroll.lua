local ITEM_ENTRY = 500519 -- Witch Doctor Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        hex = 8675528,
        healing_ward = 8675531,
        ward_of_laze = 8675534,
        voodoo_doll = 8675537
    },
    [2] = { -- Paladin (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [3] = { -- Hunter (Mana/Focus)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [4] = { -- Rogue (Energy)
        hex = 8675529,
        healing_ward = 8675532,
        ward_of_laze = 8675535,
        voodoo_doll = 8675538
    },
    [5] = { -- Priest (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [6] = { -- Death Knight (Runic Power)
        hex = 8675530,
        healing_ward = 8675533,
        ward_of_laze = 8675536,
        voodoo_doll = 8675539
    },
    [7] = { -- Shaman (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [8] = { -- Mage (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [9] = { -- Warlock (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    },
    [11] = { -- Druid (Mana)
        hex = 11641,
        healing_ward = 11899,
        ward_of_laze = 3827,
        voodoo_doll = 52695
    }
}

-- Function triggered when the item is used
local function OnUseWitchDoctorScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have embraced the dark magic of the Witch Doctor!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the dark magic of the Witch Doctor Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseWitchDoctorScroll)
