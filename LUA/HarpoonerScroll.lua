local ITEM_ENTRY = 500507 -- Harpooner Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        hooked_net = 8675384,        -- Intercept (20 Rage)
        poisoned_harpoon = 8675387,  -- Shockwave (25 Rage)
        olufs_harpoon = 8675390,     -- Heroic Throw (20 Rage)
        net = 8675393               -- Hamstring (15 Rage)
    },
    [2] = { -- Paladin (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [3] = { -- Hunter (Mana/Focus)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [4] = { -- Rogue (Energy)
        hooked_net = 8675385,        -- Shadowstep (35 Energy)
        poisoned_harpoon = 8675388,  -- Cheap Shot (40 Energy)
        olufs_harpoon = 8675391,     -- Shiv (35 Energy)
        net = 8675394               -- Crippling Poison (25 Energy)
    },
    [5] = { -- Priest (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [6] = { -- Death Knight (Runic Power)
        hooked_net = 8675386,        -- Death Grip (30 RP)
        poisoned_harpoon = 8675389,  -- Chains of Ice (35 RP)
        olufs_harpoon = 8675392,     -- Icy Touch (30 RP)
        net = 8675395               -- (Specify equivalent for DK if needed)
    },
    [7] = { -- Shaman (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [8] = { -- Mage (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [9] = { -- Warlock (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    },
    [11] = { -- Druid (Mana)
        hooked_net = 40082,
        poisoned_harpoon = 5208,
        olufs_harpoon = 43325,
        net = 38661
    }
}

-- Function triggered when the item is used
local function OnUseHarpoonerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have mastered the lethal precision of the Harpooner!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the techniques of the Harpooner Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseHarpoonerScroll)
