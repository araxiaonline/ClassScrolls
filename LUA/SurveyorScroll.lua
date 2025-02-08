local ITEM_ENTRY = 500516 -- Surveyor Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        edwards_insight = 8675492,
        sand_breath = 8675495,
        crypt_scarabs = 8675498,
        stasis_field = 8675501
    },
    [2] = { -- Paladin (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [3] = { -- Hunter (Mana/Focus)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [4] = { -- Rogue (Energy)
        edwards_insight = 8675493,
        sand_breath = 8675496,
        crypt_scarabs = 8675499,
        stasis_field = 8675502
    },
    [5] = { -- Priest (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [6] = { -- Death Knight (Runic Power)
        edwards_insight = 8675494,
        sand_breath = 8675497,
        crypt_scarabs = 8675500,
        stasis_field = 8675503
    },
    [7] = { -- Shaman (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [8] = { -- Mage (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [9] = { -- Warlock (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    },
    [11] = { -- Druid (Mana)
        edwards_insight = 60318,
        sand_breath = 20717,
        crypt_scarabs = 54311,
        stasis_field = 40835
    }
}

-- Function triggered when the item is used
local function OnUseSurveyorScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the ancient knowledge of the Surveyor!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the wisdom of the Surveyor Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseSurveyorScroll)
