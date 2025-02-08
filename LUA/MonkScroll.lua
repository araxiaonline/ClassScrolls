local ITEM_ENTRY = 500509 -- Monk Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        kick = 8675408,
        storm_punch = 8675411,
        ringing_slap = 8675414,
        head_butt = 8675417
    },
    [2] = { -- Paladin (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [3] = { -- Hunter (Mana/Focus)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [4] = { -- Rogue (Energy)
        kick = 29586,              -- Default Kick for Rogues
        storm_punch = 8675412,
        ringing_slap = 8675415,
        head_butt = 25788          -- Default Head Butt for Rogues
    },
    [5] = { -- Priest (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [6] = { -- Death Knight (Runic Power)
        kick = 8675410,
        storm_punch = 8675413,
        ringing_slap = 8675416,
        head_butt = 8675419
    },
    [7] = { -- Shaman (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [8] = { -- Mage (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [9] = { -- Warlock (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    },
    [11] = { -- Druid (Mana)
        kick = 8675409,
        storm_punch = 56352,
        ringing_slap = 59606,
        head_butt = 8675418
    }
}

-- Function triggered when the item is used
local function OnUseMonkScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have embraced the martial techniques of the Monk!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the skills of the Monk Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseMonkScroll)
