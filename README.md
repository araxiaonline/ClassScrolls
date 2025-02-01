# Custom Araxia Sub-Class Scrolls

This repository contains the class scroll designs and spell modifications for a **Azerothcore WOTLK 3.3.5**. Each class is inspired by existing NPC archetypes and includes a set of unique abilities adapted to work for different power types: **Rage**, **Energy**, and **Runic Power**.

---

## Overview
- **Number of Classes**: 13
- **Number of Abilities**: 45+
- **Power Types**: Rage (`1`), Energy (`3`), Runic Power (`6`)

Each ability has been assigned new spell IDs starting from `8675300` for ease of integration into the database and DBC files.

---

## Class Abilities

### **🌊 Aquamancer (Inspired by Twilight Aquamancer)**
**Item ID:** 500500 *(Aquamancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|--------------|----------------|------------------|--------------|-------------------------------|
| **8675300** | 9672  | **Frostbolt** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Mortal Strike (Warrior)** |
| **8675301** | 9672  | **Frostbolt** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Mutilate (Rogue)** |
| **8675302** | 9672  | **Frostbolt** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Frost Strike (Death Knight)** |
| **8675303** | 8372  | **Summon Aqua Guardian** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **0 Rage** | **Mirror Image (Mage)** |
| **8675304** | 8372  | **Summon Aqua Guardian** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **0 Energy** | **Shadow Clone (Rogue)** |
| **8675305** | 8372  | **Summon Aqua Guardian** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **0 RP** | **Army of the Dead (Death Knight)** |
| **8675306** | 71686 | **Water Bolt** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **15 Rage** | **Heroic Strike (Warrior)** |
| **8675307** | 71686 | **Water Bolt** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **30 Energy** | **Sinister Strike (Rogue)** |
| **8675308** | 71686 | **Water Bolt** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **25 RP** | **Death Coil (Death Knight)** |
| **8675309** | 13586 | **Aqua Jet** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Intercept (Warrior)** |
| **8675310** | 13586 | **Aqua Jet** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Shadowstep (Rogue)** |
| **8675311** | 13586 | **Aqua Jet** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Death's Advance (Death Knight)** |

---

### **🌀 Arcanist (Inspired by Ethereal Spellbinders & Arcane-Wielding NPCs)**  
**Item ID:** 500503 *(Arcanist Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|--------------|----------------|------------------|--------------|-------------------------------|
| **8675336** | 33832 | **Arcane Missiles** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Mortal Strike (Warrior, ranged channeled equivalent)** |
| **8675337** | 33832 | **Arcane Missiles** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **50 Energy** | **Eviscerate (Rogue, Arcane version)** |
| **8675338** | 33832 | **Arcane Missiles** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP** | **Frost Strike (Death Knight, magic burst equivalent)** |
| **8675339** | 36508 | **Energy Surge** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **10 Rage** | **Bloodrage (Warrior, generates Rage)** |
| **8675340** | 36508 | **Energy Surge** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **20 Energy** | **Thistle Tea (Rogue, restores Energy)** |
| **8675341** | 36508 | **Energy Surge** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **15 RP** | **Runic Empowerment (Death Knight, restores RP)** |
| **8675342** | 39039 | **Force Blast** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Thunder Clap (Warrior, knockback equivalent)** |
| **8675343** | 39039 | **Force Blast** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Kidney Shot (Rogue, stun/knockback equivalent)** |
| **8675344** | 39039 | **Force Blast** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Death Grip (Death Knight, inverse knockback effect)** |
| **8675345** | 32936 | **Der'izu Forces** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **35 Rage** | **Sweeping Strikes (Warrior, AoE magic version)** |
| **8675346** | 32936 | **Der'izu Forces** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **50 Energy** | **Shadow Clone (Rogue, summons illusionary copies)** |
| **8675347** | 32936 | **Der'izu Forces** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP** | **Army of the Dead (Death Knight, summon effect)** |


---


### **✨ Astromancer (Inspired by Sunfury Astromancer and Novice Astromancer)**  
**Item ID:** 500501 *(Astromancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|--------------|----------------|------------------|--------------|-------------------------------|
| **8675312** | 35914 | **Astral Focus** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **25 Rage** | **Battle Shout (Warrior)** |
| **8675313** | 35914 | **Astral Focus** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Slice and Dice (Rogue)** |
| **8675314** | 35914 | **Astral Focus** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Horn of Winter (Death Knight)** |
| **8675315** | 35917 | **Fiery Intellect** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Commanding Shout (Warrior)** |
| **8675316** | 35917 | **Fiery Intellect** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Tricks of the Trade (Rogue)** |
| **8675317** | 35917 | **Fiery Intellect** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP** | **Unholy Frenzy (Death Knight)** |
| **8675318** | 38391 | **Scorch** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **15 Rage** | **Heroic Strike (Warrior)** |
| **8675319** | 38391 | **Scorch** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **30 Energy** | **Sinister Strike (Rogue)** |
| **8675320** | 38391 | **Scorch** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **25 RP** | **Death Coil (Death Knight)** |
| **8675321** | 37279 | **Rain of Fire** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Thunder Clap (Warrior)** |
| **8675322** | 37279 | **Rain of Fire** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Fan of Knives (Rogue)** |
| **8675323** | 37279 | **Rain of Fire** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Blood Boil (Death Knight)** |

---

### **💛 Chaplain (Inspired by Scarlet Chaplain)**  
**Item ID:** 500502 *(Chaplain Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|--------------|----------------|------------------|--------------|-------------------------------|
| **8675324** | 1006 | **Inner Fire (Rank 4)** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **10 Rage** | **Battle Shout (Warrior)** |
| **8675325** | 1006 | **Inner Fire (Rank 4)** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **20 Energy** | **Slice and Dice (Rogue)** |
| **8675326** | 1006 | **Inner Fire (Rank 4)** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **15 RP** | **Horn of Winter (Death Knight)** |
| **8675327** | 6066 | **Power Word: Shield (Rank 6)** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Shield Block (Warrior)** |
| **8675328** | 6066 | **Power Word: Shield (Rank 6)** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Feint (Rogue)** |
| **8675329** | 6066 | **Power Word: Shield (Rank 6)** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Anti-Magic Shell (Death Knight)** |
| **8675330** | 8362 | **Renew** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **25 Rage** | **Enraged Regeneration (Warrior)** |
| **8675331** | 8362 | **Renew** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Recuperate (Rogue)** |
| **8675332** | 8362 | **Renew** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP** | **Death Pact (Death Knight)** |
| **8675333** | 323267 | **Power of Prayer** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Commanding Shout (Warrior)** |
| **8675334** | 323267 | **Power of Prayer** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Tricks of the Trade (Rogue)** |
| **8675335** | 323267 | **Power of Prayer** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Unholy Frenzy (Death Knight)** |

---

### **❄️ Cryomancer (Inspired by Twilight Cryomancer)**  
**Item ID:** 500506 *(Cryomancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|----------------|------------------|------------------------|----------------|------------------------|
| **8675360** | 29292 | **Frost Mist** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **25 Rage** | **Thunder Clap (Warrior)** |
| **8675361** | 29292 | **Frost Mist** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Fan of Knives (Rogue)** |
| **8675362** | 29292 | **Frost Mist** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Death and Decay (DK)** |
| **8675363** | 31256 | **Frost Armor** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **10 Rage** | **Battle Shout (Warrior)** |
| **8675364** | 31256 | **Frost Armor** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **20 Energy** | **Slice and Dice (Rogue)** |
| **8675365** | 31256 | **Frost Armor** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **15 RP** | **Horn of Winter (DK)** |
| **8675366** | 36989 | **Frost Nova** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Intimidating Shout (Warrior)** |
| **8675367** | 36989 | **Frost Nova** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Sap (Rogue)** |
| **8675368** | 36989 | **Frost Nova** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Chains of Ice (DK)** |
| **8675369** | 37865 | **Frost Shock** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Hamstring (Warrior)** |
| **8675370** | 37865 | **Frost Shock** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Crippling Poison (Rogue,)** |
| **8675371** | 37865 | **Frost Shock** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Icy Touch (DK)** |

---

### **🌍 Geomancer (Inspired by: Grimtotem Geomancer and Razorfen Geomancer)**  
**Item ID:** 500506 *(Geomancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|----------------|------------------|------------------------|----------------|------------------------|
| **8675372** | 4979  | **Quick Flame Ward** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **15 Rage** | **Shield Block (Warrior)** |
| **8675373** | 4979  | **Quick Flame Ward** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **25 Energy** | **Cloak of Shadows (Rogue)** |
| **8675374** | 4979  | **Quick Flame Ward** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP** | **Anti-Magic Shell (DK)** |
| **8675375** | 5280  | **Razor Mane (Rank 1)** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Enrage (Warrior)** |
| **8675376** | 5280  | **Razor Mane (Rank 1)** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Deadly Poison (Rogue)** |
| **8675377** | 5280  | **Razor Mane (Rank 1)** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Blade Barrier (DK)** |
| **8675378** | 9532  | **Lightning Bolt** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **25 Rage** | **Heroic Throw (Warrior)** |
| **8675379** | 9532  | **Lightning Bolt** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Shiv (Rogue)** |
| **8675380** | 9532  | **Lightning Bolt** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP** | **Death Coil (DK)** |
| **8675381** | 8270  | **Summon Earth Rumbler** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **40 Rage** | **Mirror Image (Mage)** |
| **8675382** | 8270  | **Summon Earth Rumbler** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **55 Energy** | **Shadow Clone (PvE Rogue Event)** |
| **8675383** | 8270  | **Summon Earth Rumbler** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP** | **Army of the Dead (DK)** |

---

### **🏹 Harpooner (Inspired by Coilskar Harpooner, Dragonflayer Harpooner, and Tidewalker Harpooner)**  
**Item ID:** 500507 *(Harpooner Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|----------------|------------------|------------------------|----------------|------------------------|
| **8675384** | 40082  | **Hooked Net** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Intercept (Warrior)** |
| **8675385** | 40082  | **Hooked Net** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Shadowstep (Rogue)** |
| **8675386** | 40082  | **Hooked Net** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Death Grip (DK)** |
| **8675387** | 5208  | **Poisoned Harpoon** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **25 Rage** | **Shockwave (Warrior)** |
| **8675388** | 5208  | **Poisoned Harpoon** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Cheap Shot (Rogue)** |
| **8675389** | 5208  | **Poisoned Harpoon** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP** | **Chains of Ice (DK)** |
| **8675390** | 43325  | **Oluf's Harpoon** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Heroic Throw (Warrior)** |
| **8675391** | 43325  | **Oluf's Harpoon** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Shiv (Rogue)** |
| **8675392** | 43325  | **Oluf's Harpoon** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Icy Touch (DK)** |
| **8675393** | 38661  | **Net** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **15 Rage** | **Hamstring (Warrior)** |
| **8675394** | 38661  | **Net** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **25 Energy** | **Crippling Poison (Rogue)** |
| **8675395** | 38661  | **Net** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP** | **Chains of Ice (DK)** |

---


















### Remaining Classes (Full)  
I will continue this for **Geomancer**, **Harpooner**, **Hydromancer**, **Necromancer**, **Nethermancer**, **Pyromancer**, **Shadowmancer**, **Siren**, and **Wavecaller**. 


### **Power Types**

| **Power Type**   | **Value** |  
|-------------------|-----------|  
| Mana             | `0`       |  
| Rage             | `1`       |  
| Energy           | `3`       |  
| Runic Power      | `6`       |  

To apply these power types, update the `PowerType` column in `Spell.dbc` for each spell.

---

## Notes
- All spell IDs start from `8675300` to avoid conflict with Blizzard's default IDs.
- For questions or collaboration, feel free to contribute or open an issue!

