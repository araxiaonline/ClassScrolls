local ITEM_ENTRY = 500513 -- Shadowmancer Scroll Item ID

-- Map of class IDs to their specific spells
local SPELLS_BY_CLASS = {
    [1] = { -- Warrior (Rage)
        dark_mending = 8675456,
        shadow_blast = 8675459,
        shadowguard = 8675462,
        shadow_nova = 8675465
    },
    [2] = { -- Paladin (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [3] = { -- Hunter (Mana/Focus)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [4] = { -- Rogue (Energy)
        dark_mending = 8675457,
        shadow_blast = 8675460,
        shadowguard = 8675463,
        shadow_nova = 8675466
    },
    [5] = { -- Priest (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [6] = { -- Death Knight (Runic Power)
        dark_mending = 8675458,
        shadow_blast = 8675461,
        shadowguard = 8675464,
        shadow_nova = 8675467
    },
    [7] = { -- Shaman (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [8] = { -- Mage (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [9] = { -- Warlock (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    },
    [11] = { -- Druid (Mana)
        dark_mending = 19775,
        shadow_blast = 38085,
        shadowguard = 38379,
        shadow_nova = 33846
    }
}

-- Function triggered when the item is used
local function OnUseShadowmancerScroll(event, player, item, target)
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
            player:SendBroadcastMessage("You have embraced the shadows of the Shadowmancer!")
        else
            player:SendBroadcastMessage("You already know all the abilities this scroll teaches.")
        end
    else
        player:SendBroadcastMessage("Your class cannot harness the dark powers of the Shadowmancer Scroll.")
    end
end

-- Register the script to the item
RegisterItemEvent(ITEM_ENTRY, 2, OnUseShadowmancerScroll)
