local ITEM_ENTRY = 500517 -- Time Bender Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        haste_other = 8675504,
        slow = 8675507,
        time_shock = 8675510,
        time_stop = 8675513
    },
    [2] = { -- Paladin (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [3] = { -- Hunter (Mana/Focus)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [4] = { -- Rogue (Energy)
        haste_other = 8675505,
        slow = 8675508,
        time_shock = 8675511,
        time_stop = 8675514
    },
    [5] = { -- Priest (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [6] = { -- Death Knight (Runic Power)
        haste_other = 8675506,
        slow = 8675509,
        time_shock = 8675512,
        time_stop = 8675515
    },
    [7] = { -- Shaman (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [8] = { -- Mage (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [9] = { -- Warlock (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    },
    [11] = { -- Druid (Mana)
        haste_other = 34186,
        slow = 6146,
        time_shock = 60076,
        time_stop = 47736
    }
}

-- Function triggered when the item is used
local function OnUseTimeBenderScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the mysterious powers of the Time Bender!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the powers of the Time Bender Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseTimeBenderScroll)
