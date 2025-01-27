local ITEM_ENTRY = 500501 -- Astromancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        astral_focus = 8675306,
        fiery_intellect = 8675309,
        scorch = 8675312,
        rain_of_fire = 8675315
    },
    [2] = { -- Paladin (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [3] = { -- Hunter (Mana/Focus)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [4] = { -- Rogue (Energy)
        astral_focus = 8675307,
        fiery_intellect = 8675310,
        scorch = 8675313,
        rain_of_fire = 8675316
    },
    [5] = { -- Priest (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [6] = { -- Death Knight (Runic Power)
        astral_focus = 8675308,
        fiery_intellect = 8675311,
        scorch = 8675314,
        rain_of_fire = 8675317
    },
    [7] = { -- Shaman (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [8] = { -- Mage (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [9] = { -- Warlock (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    },
    [11] = { -- Druid (Mana)
        astral_focus = 35914,
        fiery_intellect = 35917,
        scorch = 38391,
        rain_of_fire = 37279
    }
}

-- Function triggered when the item is used
local function OnUseAstromancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have learned the secrets of the Astromancer!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot use this scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseAstromancerScroll)
