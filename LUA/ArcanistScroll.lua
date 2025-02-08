local ITEM_ENTRY = 500503 -- Arcanist Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        arcane_missiles = 8675336,
        energy_surge = 8675339,
        force_blast = 8675342,
        der_izu_forces = 8675345
    },
    [2] = { -- Paladin (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [3] = { -- Hunter (Mana/Focus)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [4] = { -- Rogue (Energy)
        arcane_missiles = 8675337,
        energy_surge = 8675340,
        force_blast = 8675343,
        der_izu_forces = 8675346
    },
    [5] = { -- Priest (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [6] = { -- Death Knight (Runic Power)
        arcane_missiles = 8675338,
        energy_surge = 8675341,
        force_blast = 8675344,
        der_izu_forces = 8675347
    },
    [7] = { -- Shaman (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [8] = { -- Mage (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [9] = { -- Warlock (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    },
    [11] = { -- Druid (Mana)
        arcane_missiles = 33832,
        energy_surge = 36508,
        force_blast = 39039,
        der_izu_forces = 32936
    }
}

-- Function triggered when the item is used
local function OnUseArcanistScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the arcane secrets of the Arcanist!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Arcanist Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseArcanistScroll)
