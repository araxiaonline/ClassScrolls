local ITEM_ENTRY = 500518 -- Venomancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        poison_bolt = 8675516,
        poison_shield = 8675519,
        poisoned_thrust = 8675522,
        leech_poison = 8675525
    },
    [2] = { -- Paladin (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [3] = { -- Hunter (Mana/Focus)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [4] = { -- Rogue (Energy)
        poison_bolt = 8675517,
        poison_shield = 8675520,
        poisoned_thrust = 8675523,
        leech_poison = 8675526
    },
    [5] = { -- Priest (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [6] = { -- Death Knight (Runic Power)
        poison_bolt = 8675518,
        poison_shield = 8675521,
        poisoned_thrust = 8675524,
        leech_poison = 8675527
    },
    [7] = { -- Shaman (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [8] = { -- Mage (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [9] = { -- Warlock (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    },
    [11] = { -- Druid (Mana)
        poison_bolt = 30917,
        poison_shield = 39027,
        poisoned_thrust = 30822,
        leech_poison = 31288
    }
}

-- Function triggered when the item is used
local function OnUseVenomancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have embraced the toxic power of the Venomancer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the venomous magic of the Venomancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseVenomancerScroll)
