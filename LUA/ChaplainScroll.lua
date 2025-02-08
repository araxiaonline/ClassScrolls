local ITEM_ENTRY = 500502 -- Chaplain Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        inner_fire = 8675324,
        power_word_shield = 8675327,
        renew = 8675330,
        power_of_prayer = 8675333
    },
    [2] = { -- Paladin (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [3] = { -- Hunter (Mana/Focus)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [4] = { -- Rogue (Energy)
        inner_fire = 8675325,
        power_word_shield = 8675328,
        renew = 8675331,
        power_of_prayer = 8675334
    },
    [5] = { -- Priest (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [6] = { -- Death Knight (Runic Power)
        inner_fire = 8675326,
        power_word_shield = 8675329,
        renew = 8675332,
        power_of_prayer = 8675335
    },
    [7] = { -- Shaman (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [8] = { -- Mage (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [9] = { -- Warlock (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    },
    [11] = { -- Druid (Mana)
        inner_fire = 1006,
        power_word_shield = 6066,
        renew = 8362,
        power_of_prayer = 323267
    }
}

-- Function triggered when the item is used
local function OnUseChaplainScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have learned the divine teachings of the Chaplain!")
        else
            player:SendBroadcastMessage("You already know all the blessings this scroll provides.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Chaplain Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseChaplainScroll)
