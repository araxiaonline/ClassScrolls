local ITEM_ENTRY = 500512 -- Pyromancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        ancient_fire = 8675444,
        flame_shock = 8675447,
        mark_of_flames = 8675450,
        summon_fire_elemental = 8675453
    },
    [2] = { -- Paladin (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [3] = { -- Hunter (Mana/Focus)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [4] = { -- Rogue (Energy)
        ancient_fire = 8675445,
        flame_shock = 8675448,
        mark_of_flames = 8675451,
        summon_fire_elemental = 8675454
    },
    [5] = { -- Priest (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [6] = { -- Death Knight (Runic Power)
        ancient_fire = 8675446,
        flame_shock = 8675449,
        mark_of_flames = 8675452,
        summon_fire_elemental = 8675455
    },
    [7] = { -- Shaman (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [8] = { -- Mage (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [9] = { -- Warlock (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    },
    [11] = { -- Druid (Mana)
        ancient_fire = 37986,
        flame_shock = 15096,
        mark_of_flames = 15128,
        summon_fire_elemental = 63774
    }
}

-- Function triggered when the item is used
local function OnUsePyromancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have mastered the blazing arts of the Pyromancer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the fiery powers of the Pyromancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUsePyromancerScroll)
