local ITEM_ENTRY = 500511 -- Nethermancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        bloodcrystal_surge = 8675432,
        drain_life = 8675435,
        nether_shock = 8675438,
        netherbreath = 8675441
    },
    [2] = { -- Paladin (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [3] = { -- Hunter (Mana/Focus)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [4] = { -- Rogue (Energy)
        bloodcrystal_surge = 8675433,
        drain_life = 8675436,
        nether_shock = 8675439,
        netherbreath = 8675442
    },
    [5] = { -- Priest (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [6] = { -- Death Knight (Runic Power)
        bloodcrystal_surge = 8675434,
        drain_life = 8675437,
        nether_shock = 8675440,
        netherbreath = 8675443
    },
    [7] = { -- Shaman (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [8] = { -- Mage (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [9] = { -- Warlock (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    },
    [11] = { -- Druid (Mana)
        bloodcrystal_surge = 35778,
        drain_life = 17173,
        nether_shock = 35334,
        netherbreath = 36631
    }
}

-- Function triggered when the item is used
local function OnUseNethermancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have unlocked the secrets of the Nethermancer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the powers of the Nethermancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseNethermancerScroll)
