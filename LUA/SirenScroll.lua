local ITEM_ENTRY = 500514 -- Siren Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        banshee_shriek = 8675468,
        enveloping_winds = 8675471,
        ribbon_of_souls = 8675474,
        viscous_shield = 8675477
    },
    [2] = { -- Paladin (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [3] = { -- Hunter (Mana/Focus)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [4] = { -- Rogue (Energy)
        banshee_shriek = 8675469,
        enveloping_winds = 8675472,
        ribbon_of_souls = 8675475,
        viscous_shield = 8675478
    },
    [5] = { -- Priest (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [6] = { -- Death Knight (Runic Power)
        banshee_shriek = 8675470,
        enveloping_winds = 8675473,
        ribbon_of_souls = 8675476,
        viscous_shield = 8675479
    },
    [7] = { -- Shaman (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [8] = { -- Mage (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [9] = { -- Warlock (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    },
    [11] = { -- Druid (Mana)
        banshee_shriek = 29505,
        enveloping_winds = 15535,
        ribbon_of_souls = 16243,
        viscous_shield = 38026
    }
}

-- Function triggered when the item is used
local function OnUseSirenScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the enchanting powers of the Siren!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the mystical powers of the Siren Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseSirenScroll)
