local ITEM_ENTRY = 500504 -- Centurion Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        arcane_flurry = 8675348,
        blood_heal = 8675351,
        spellbreaker = 35871, -- Warriors use default Spellbreaker
        sonic_strike = 8675357
    },
    [2] = { -- Paladin (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [3] = { -- Hunter (Mana/Focus)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [4] = { -- Rogue (Energy)
        arcane_flurry = 8675349,
        blood_heal = 8675352,
        spellbreaker = 8675355, -- Rogues use Energy version
        sonic_strike = 8675358
    },
    [5] = { -- Priest (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [6] = { -- Death Knight (Runic Power)
        arcane_flurry = 8675350,
        blood_heal = 8675353,
        spellbreaker = 8675356, -- Death Knights use Runic Power version
        sonic_strike = 8675359
    },
    [7] = { -- Shaman (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [8] = { -- Mage (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [9] = { -- Warlock (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    },
    [11] = { -- Druid (Mana)
        arcane_flurry = 37268,
        blood_heal = 36476,
        spellbreaker = 8675354, -- Corrected Spellbreaker for Mana users
        sonic_strike = 41168
    }
}

-- Function triggered when the item is used
local function OnUseCenturionScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the battle-hardened techniques of the Centurion!")
        else
            player:SendBroadcastMessage("You already know all the spells this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the power of the Centurion Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseCenturionScroll)
