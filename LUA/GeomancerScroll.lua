local ITEM_ENTRY = 500506 -- Geomancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        quick_flame_ward = 8675372,
        razor_mane = 8675375,
        lightning_bolt = 8675378,
        summon_earth_rumbler = 8675381
    },
    [2] = { -- Paladin (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [3] = { -- Hunter (Mana/Focus)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [4] = { -- Rogue (Energy)
        quick_flame_ward = 8675373,
        razor_mane = 8675376,
        lightning_bolt = 8675379,
        summon_earth_rumbler = 8675382
    },
    [5] = { -- Priest (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [6] = { -- Death Knight (Runic Power)
        quick_flame_ward = 8675374,
        razor_mane = 8675377,
        lightning_bolt = 8675380,
        summon_earth_rumbler = 8675383
    },
    [7] = { -- Shaman (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [8] = { -- Mage (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [9] = { -- Warlock (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    },
    [11] = { -- Druid (Mana)
        quick_flame_ward = 4979,
        razor_mane = 5280,
        lightning_bolt = 9532,
        summon_earth_rumbler = 8270
    }
}

-- Function triggered when the item is used
local function OnUseGeomancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have mastered the elemental forces of the Geomancer!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Geomancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseGeomancerScroll)
