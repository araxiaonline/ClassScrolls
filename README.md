# Custom Araxia Sub-Class Scrolls

This repository contains the class scroll designs and spell modifications for a **Azerothcore WOTLK 3.3.5**. Each class is inspired by existing NPC archetypes and includes a set of unique abilities adapted to work for different power types: **Rage**, **Energy**, and **Runic Power**.

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

---

## Overview
- **Number of Classes**: 20
- **Number of Abilities**: 45+
- **Power Types**: Rage (`1`), Energy (`3`), Runic Power (`6`)

Each ability has been assigned new spell IDs starting from `8675300` for ease of integration into the database and DBC files.

---

## Class Abilities

### **🌊 Aquamancer (Inspired by Twilight Aquamancer)**
**Item ID:** 500500 *(Aquamancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|--------------|----------------|------------------|--------------|-------------------------------|
| **8675300** | 9672  | **Frostbolt** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** |  **15 Rage** | **Heroic Strike (Warrior)** |
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

### **🔮 Arcanist (The Arcanist class is inspired by: Bash'ir Arcanist & Der'izu Arcanist)**  
**Item ID:** 500504 *(Arcanist Scroll)*  

| **New ID** | **Original ID** | **Ability Name**     | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**              |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|-------------------------------------|
| **8675336** | 51787          | **Mystical Bolt**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Heroic Throw (Warrior)**         |
| **8675337** | 51787          | **Mystical Bolt**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **50 Energy**  | **Shuriken Toss (Rogue)**          |
| **8675338** | 51787          | **Mystical Bolt**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP**      | **Death Coil (Death Knight)**      |
| **8675339** | 60903          | **Arcane Breath**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**    | **Demoralizing Shout (Warrior)**   |
| **8675340** | 60903          | **Arcane Breath**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **20 Energy**  | **Garrote (Rogue)**                |
| **8675341** | 60903          | **Arcane Breath**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **15 RP**      | **Blood Plague (Death Knight)**    |
| **8675342** | 39039          | **Force Blast**      | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Thunder Clap (Warrior)**         |
| **8675343** | 39039          | **Force Blast**      | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **45 Energy**  | **Kidney Shot (Rogue)**            |
| **8675344** | 39039          | **Force Blast**      | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Blood Boil (Death Knight)**      |
| **8675345** | 32936          | **Der'izu Forces**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **35 Rage**    | **Bladestorm (Warrior)**           |
| **8675346** | 32936          | **Der'izu Forces**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **50 Energy**  | **Killing Spree (Rogue)**          |
| **8675347** | 32936          | **Der'izu Forces**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP**      | **Army of the Dead (Death Knight)** |


---


### **🌌 Astromancer (The Astromancer class is inspired by: Sunfury Astromancer and Novice Astromancer)**  
**Item ID:** 500501 *(Astromancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**                | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**              |
|------------|----------------|---------------------------------|-------------------------------------------------------------------------------|----------------|-------------------------------------|
| **8675312** | 35914          | **Astral Focus**                | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Battle Shout (Warrior)**          |
| **8675313** | 35914          | **Astral Focus**                | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Premeditation (Rogue)**           |
| **8675314** | 35914          | **Astral Focus**                | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Horn of Winter (Death Knight)**   |
| **8675315** | 42783          | **Wrath of The Astromancer**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Thunder Clap (Warrior)**          |
| **8675316** | 42783          | **Wrath of The Astromancer**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **45 Energy**  | **Envenom (Rogue)**                 |
| **8675317** | 42783          | **Wrath of The Astromancer**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Howling Blast (Death Knight)**    |
| **8675318** | 44417          | **Lightning Cloud**             | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Cleave (Warrior)**                |
| **8675319** | 44417          | **Lightning Cloud**             | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Fan of Knives (Rogue)**           |
| **8675320** | 44417          | **Lightning Cloud**             | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Blood Boil (Death Knight)**       |
| **8675321** | 37279          | **Rain of Fire**                | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Bladestorm (Warrior)**            |
| **8675322** | 37279          | **Rain of Fire**                | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **45 Energy**  | **Killing Spree (Rogue)**           |
| **8675323** | 37279          | **Rain of Fire**                | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Death and Decay (Death Knight)**  |

---

### **🛡️ Centurion (The Centurion class is inspired by: Illidari Centurion, Eclipsion Centurion, and Crimson Hand Centurion)**  
**Item ID:** 500505 *(Centurion Scroll)*  

| **New ID** | **Original ID** | **Ability Name**   | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**                                     |
|------------|----------------|--------------------|-------------------------------------------------------------------------------|----------------|-----------------------------------------------------------|
| **8675348** | 37268          | **Arcane Flurry**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Whirlwind (Warrior)**                                    |
| **8675349** | 37268          | **Arcane Flurry**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **50 Energy**  | **Blade Flurry (Rogue)**                                   |
| **8675350** | 37268          | **Arcane Flurry**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Howling Blast (Death Knight)**                           |
| **8675351** | 36476          | **Blood Heal**     | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Enraged Regeneration (Warrior)**                         |
| **8675352** | 36476          | **Blood Heal**     | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **45 Energy**  | **Crimson Vial (Rogue)**                                   |
| **8675353** | 36476          | **Blood Heal**     | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Death Pact (Death Knight)**                              |
| **8675354** | 35871          | **Spellbreaker**   | ![#1E90FF](https://placehold.co/15x15/1E90FF/1E90FF.png) **Druid, Hunter, Mage, Paladin, Priest, Shaman, Warlock (Mana)** | **25 Mana**    | **Spell Reflection (Warrior), Purge (Shaman)**             |
| **8675355** | 35871          | **Spellbreaker**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Kick (Rogue)**                                           |
| **8675356** | 35871          | **Spellbreaker**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Anti-Magic Shell (Death Knight)**                        |
| **8675357** | 41168          | **Sonic Strike**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **35 Rage**    | **Thunder Clap (Warrior)**                                 |
| **8675358** | 41168          | **Sonic Strike**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **50 Energy**  | **Fan of Knives (Rogue)**                                  |
| **8675359** | 41168          | **Sonic Strike**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Blood Boil (Death Knight)**                              |

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

### **🌊 Hydromancer (Inspired by Water-Based Casters)**  
**Item ID:** 500508 *(Hydromancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name** | **Class (Power Type)** | **Power Cost** | **Equivalent Ability** |
|------------|----------------|------------------|------------------------|----------------|------------------------|
| **8675396** | 38237 | **Water Nova** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **30 Rage** | **Thunder Clap (Warrior)** |
| **8675397** | 38237 | **Water Nova** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **45 Energy** | **Fan of Knives (Rogue)** |
| **8675398** | 38237 | **Water Nova** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Blood Boil (Death Knight)** |
| **8675399** | 39878 | **Tidal Burst** | ![#1E90FF](https://placehold.co/15x15/1E90FF/1E90FF.png) **Druid, Hunter, Mage, Paladin, Priest, Shaman, Warlock (Mana)** | **25 Mana** | **Chain Lightning (Shaman)** |
| **8675400** | 39878 | **Tidal Burst** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **40 Energy** | **Blade Flurry (Rogue)** |
| **8675401** | 39878 | **Tidal Burst** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP** | **Death and Decay (Death Knight)** |
| **8675402** | 38049 | **Watery Grave** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **35 Rage** | **Shockwave (Warrior)** |
| **8675403** | 38049 | **Watery Grave** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **50 Energy** | **Kidney Shot (Rogue)** |
| **8675404** | 38049 | **Watery Grave** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP** | **Strangulate (Death Knight)** |
| **8675405** | 54237 | **Water Blast** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)** | **20 Rage** | **Heroic Throw (Warrior)** |
| **8675406** | 54237 | **Water Blast** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)** | **35 Energy** | **Shiv (Rogue)** |
| **8675407** | 54237 | **Water Blast** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP** | **Icy Touch (Death Knight)** |

---

### **🥋 Monk (Inspired by Monk Class)**
**Item ID:** 500509 *(Monk Scroll)*  

| **New ID** | **Original ID** | **Ability Name**   | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**                                     |
|------------|----------------|--------------------|-------------------------------------------------------------------------------|----------------|-----------------------------------------------------------|
| **8675408** | 29586          | **Kick**           | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Pummel (Warrior)**                                       |
| **8675409** | 29586          | **Kick**           | ![#1E90FF](https://placehold.co/15x15/1E90FF/1E90FF.png) **Druid, Hunter, Mage, Paladin, Priest, Shaman, Warlock (Mana)** | **120 Mana**   | **Counterspell (Mage), Rebuke (Paladin)**                  |
| **8675410** | 29586          | **Kick**           | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP**      | **Mind Freeze (Death Knight)**                             |
| **8675411** | 56352          | **Storm Punch**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Heroic Strike (Warrior)**             |
| **8675412** | 56352          | **Storm Punch**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Sinister Strike (Rogue)**             |
| **8675413** | 56352          | **Storm Punch**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Death Strike (Death Knight)**         |
| **8675414** | 59606          | **Ringing Slap**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Shield Slam (Warrior)**               |
| **8675415** | 59606          | **Ringing Slap**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Backstab (Rogue)**                        |
| **8675416** | 59606          | **Ringing Slap**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **25 RP**      | **Plague Strike (Death Knight)**            |
| **8675417** | 25788          | **Head Butt**      | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Charge Stun (Warrior)**                                  |
| **8675418** | 25788          | **Head Butt**      | ![#1E90FF](https://placehold.co/15x15/1E90FF/1E90FF.png) **Druid, Hunter, Mage, Paladin, Priest, Shaman, Warlock (Mana)** | **150 Mana**   | **Hammer of Justice (Paladin), Polymorph (Mage)**          |
| **8675419** | 25788          | **Head Butt**      | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Gnaw (Death Knight)**                      |

---

### **💀 Necromancer (The Necromancer class is inspired by: Dark Necromancer, Burning Depths Necromancer, and Deatholme Necromancer)**  
**Item ID:** 500510 *(Necromancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**     | **Class (Power Type)**                                                        | **Power Cost**       | **Equivalent Ability**                              |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------------|----------------------------------------------------|
| **8675420** | 20812          | **Cripple**          | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**          | **Hamstring**                                      |
| **8675421** | 20812          | **Cripple**          | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **20 Energy**        | **Crippling Poison**                     |
| **8675422** | 20812          | **Cripple**          | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 Runic Power**   | **Chains of Ice**                                  |
| **8675423** | 50324          | **Bone Armor**    |  ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Heroic Strike (Warrior)**             |
| **8675424** | 50324          | **Bone Armor**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**        | **Fan of Knives**                                  |
| **8675425** | 50324          | **Bone Armor**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **60 Runic Power**   | **Death and Decay**           |
| **8675426** | 51431          | **Power Release**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**          | **Heroic Strike / Slam**                           |
| **8675427** | 51431          | **Power Release**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**        | **Sinister Strike**                                |
| **8675428** | 51431          | **Power Release**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 Runic Power**   | **Death Coil**                                     |
| **8675429** | 8853           | **Summon Skeleton**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**          | **Shattering Throw**                     |
| **8675430** | 8853           | **Summon Skeleton**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**        | **Distract**                       |
| **8675431** | 8853           | **Summon Skeleton**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 Runic Power**   | **Raise Dead**                                     |

---

### **🌌 Nethermancer (The Nethermancer class is inspired by: Ethereal Nethermancer and Sunfury Nethermancer)**  
**Item ID:** 500511 *(Nethermancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**       | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**          |
|------------|----------------|------------------------|-------------------------------------------------------------------------------|----------------|---------------------------------|
| **8675432** | 35778          | **Bloodcrystal Surge** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Bloodthirst (Warrior)**       |
| **8675433** | 35778          | **Bloodcrystal Surge** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Eviscerate (Rogue)**          |
| **8675434** | 35778          | **Bloodcrystal Surge** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Heart Strike (Death Knight)** |
| **8675435** | 17173          | **Drain Life**         | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Victory Rush (Warrior)**      |
| **8675436** | 17173          | **Drain Life**         | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Leeching Poison (Rogue)**     |
| **8675437** | 17173          | **Drain Life**         | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Death Strike (Death Knight)** |
| **8675438** | 35334          | **Nether Shock**       | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Heroic Strike (Warrior)**     |
| **8675439** | 35334          | **Nether Shock**       | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **20 Energy**  | **Shiv (Rogue)**                |
| **8675440** | 35334          | **Nether Shock**       | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Death Coil (Death Knight)**   |
| **8675441** | 36631          | **Netherbreath**       | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Cleave (Warrior)**            |
| **8675442** | 36631          | **Netherbreath**       | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Fan of Knives (Rogue)**       |
| **8675443** | 36631          | **Netherbreath**       | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Howling Blast (Death Knight)** |

---

### **🔥 Pyromancer (The Pyromancer class is inspired by: Firebrand Pyromancer and Sunhawk Pyromancer)**  
**Item ID:** 500512 *(Pyromancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**         | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**             |
|------------|----------------|--------------------------|-------------------------------------------------------------------------------|----------------|------------------------------------|
| **8675444** | 37986          | **Ancient Fire**         | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Mortal Strike (Warrior)**        |
| **8675445** | 37986          | **Ancient Fire**         | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Envenom (Rogue)**                |
| **8675446** | 37986          | **Ancient Fire**         | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP**      | **Obliterate (Death Knight)**      |
| **8675447** | 15096          | **Flame Shock**          | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**    | **Thunder Clap (Warrior)**         |
| **8675448** | 15096          | **Flame Shock**          | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Garrote (Rogue)**                |
| **8675449** | 15096          | **Flame Shock**          | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP**      | **Frost Fever (Death Knight)**     |
| **8675450** | 15128          | **Mark of Flames**       | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Sunder Armor (Warrior)**         |
| **8675451** | 15128          | **Mark of Flames**       | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **25 Energy**  | **Expose Armor (Rogue)**           |
| **8675452** | 15128          | **Mark of Flames**       | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP**      | **Mark of Blood (Death Knight)**   |
| **8675453** | 63774          | **Summon Fire Elemental**| ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **35 Rage**    | **Shattering Throw (Warrior)**     |
| **8675454** | 63774          | **Summon Fire Elemental**| ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Distract (Rogue)**               |
| **8675455** | 63774          | **Summon Fire Elemental**| ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Raise Dead (Death Knight)**      |

---

### **🌑 Shadowmancer (The Shadowmancer class is inspired by: Dark Conclave Shadowmancer)**  
**Item ID:** 500513 *(Shadowmancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**   | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**               |
|------------|----------------|--------------------|-------------------------------------------------------------------------------|----------------|--------------------------------------|
| **8675456** | 19775          | **Dark Mending**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Enraged Regeneration (Warrior)**   |
| **8675457** | 19775          | **Dark Mending**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Crimson Vial (Rogue)**             |
| **8675458** | 19775          | **Dark Mending**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Death Pact (Death Knight)**        |
| **8675459** | 38085          | **Shadow Blast**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Heroic Strike (Warrior)**          |
| **8675460** | 38085          | **Shadow Blast**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Shiv (Rogue)**                     |
| **8675461** | 38085          | **Shadow Blast**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Death Coil (Death Knight)**        |
| **8675462** | 38379          | **Shadowguard**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Shield Block (Warrior)**           |
| **8675463** | 38379          | **Shadowguard**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Evasion (Rogue)**                  |
| **8675464** | 38379          | **Shadowguard**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP**      | **Anti-Magic Shell (Death Knight)**  |
| **8675465** | 33846          | **Shadow Nova**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Thunder Clap (Warrior)**           |
| **8675466** | 33846          | **Shadow Nova**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Fan of Knives (Rogue)**            |
| **8675467** | 33846          | **Shadow Nova**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP**      | **Howling Blast (Death Knight)**     |

---

### **🎶 Siren (The Siren class is inspired by: Coilskar Siren, Daggerspine Siren, and Death Siren)**  
**Item ID:** 500514 *(Siren Scroll)*  

| **New ID** | **Original ID** | **Ability Name**      | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**               |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|--------------------------------------|
| **8675468** | 29505          | **Banshee Shriek**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Intimidating Shout (Warrior)**     |
| **8675469** | 29505          | **Banshee Shriek**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Blind (Rogue)**                    |
| **8675470** | 29505          | **Banshee Shriek**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Strangulate (Death Knight)**       |
| **8675471** | 15535          | **Enveloping Winds** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Hamstring (Warrior)**              |
| **8675472** | 15535          | **Enveloping Winds** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Sap (Rogue)**                      |
| **8675473** | 15535          | **Enveloping Winds** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Chains of Ice (Death Knight)**     |
| **8675474** | 16243          | **Ribbon of Souls**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Mortal Strike (Warrior)**          |
| **8675475** | 16243          | **Ribbon of Souls**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Envenom (Rogue)**                  |
| **8675476** | 16243          | **Ribbon of Souls**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **45 RP**      | **Death Coil (Death Knight)**        |
| **8675477** | 38026          | **Viscous Shield**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Shield Block (Warrior)**           |
| **8675478** | 38026          | **Viscous Shield**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Evasion (Rogue)**                  |
| **8675479** | 38026          | **Viscous Shield**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Anti-Magic Barrier (Death Knight)** |

---

### **🔮 Soothsayer (The Soothsayer class is inspired by: Ancient Drakkari Soothsayer, Coilfang Soothsayer, and Coilskar Soothsayer)**  
**Item ID:** 500515 *(Soothsayer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**     | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**               |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|--------------------------------------|
| **8675480** | 5514           | **Darkened Vision**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Demoralizing Shout (Warrior)**     |
| **8675481** | 5514           | **Darkened Vision**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Garrote (Rogue)**                  |
| **8675482** | 5514           | **Darkened Vision**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Blood Plague (Death Knight)**      |
| **8675483** | 16587          | **Dark Whispers**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Taunt (Warrior)**                  |
| **8675484** | 16587          | **Dark Whispers**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Distract (Rogue)**                 |
| **8675485** | 16587          | **Dark Whispers**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **20 RP**      | **Mind Freeze (Death Knight)**       |
| **8675486** | 34800          | **Impending Coma**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Thunder Clap (Warrior)**           |
| **8675487** | 34800          | **Impending Coma**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Kidney Shot (Rogue)**              |
| **8675488** | 34800          | **Impending Coma**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Asphyxiate (Death Knight)**        |
| **8675489** | 51020          | **Time Lapse**       | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Spell Reflection (Warrior)**       |
| **8675490** | 51020          | **Time Lapse**       | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Cloak of Shadows (Rogue)**         |
| **8675491** | 51020          | **Time Lapse**       | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Anti-Magic Shell (Death Knight)**  |

---

### **🔍 Surveyor (The Surveyor class is inspired by: Bash'ir Surveyor, Blood Elf Surveyor, and Gravelsnout Surveyor)**  
**Item ID:** 500516 *(Surveyor Scroll)*  

| **New ID** | **Original ID** | **Ability Name**     | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**               |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|--------------------------------------|
| **8675492** | 60318          | **Edward's Insight** | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**    | **Commanding Shout (Warrior)**       |
| **8675493** | 60318          | **Edward's Insight** | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **25 Energy**  | **Premeditation (Rogue)**           |
| **8675494** | 60318          | **Edward's Insight** | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **10 RP**      | **Blood Tap (Death Knight)**        |
| **8675495** | 20717          | **Sand Breath**      | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Demoralizing Shout (Warrior)**     |
| **8675496** | 20717          | **Sand Breath**      | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Garrote (Rogue)**                 |
| **8675497** | 20717          | **Sand Breath**      | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Death Coil (Death Knight)**       |
| **8675498** | 54311          | **Crypt Scarabs**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Sweeping Strikes (Warrior)**       |
| **8675499** | 54311          | **Crypt Scarabs**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Fan of Knives (Rogue)**           |
| **8675500** | 54311          | **Crypt Scarabs**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Army of the Dead (Death Knight)** |
| **8675501** | 40835          | **Stasis Field**     | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Shield Wall (Warrior)**           |
| **8675502** | 40835          | **Stasis Field**     | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Smoke Bomb (Rogue)**              |
| **8675503** | 40835          | **Stasis Field**     | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Icebound Fortitude (Death Knight)** |

---

### **⏳ Time Bender (The Time Bender class is inspired by: Time Mage from Final Fantasy Tactics)**  
**Item ID:** 500517 *(Time Bender Scroll)*  

| **New ID** | **Original ID** | **Ability Name**  | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**            |
|------------|----------------|------------------|-------------------------------------------------------------------------------|----------------|----------------------------------|
| **8675504** | 34186          | **Haste Other**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**    | **Commanding Shout (Warrior)**   |
| **8675505** | 34186          | **Haste Other**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **25 Energy**  | **Sprint (Rogue)**               |
| **8675506** | 34186          | **Haste Other**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **10 RP**      | **Unholy Frenzy (Death Knight)**  |
| **8675507** | 6146           | **Slow**         | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Piercing Howl (Warrior)**       |
| **8675508** | 6146           | **Slow**         | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **20 Energy**  | **Crippling Poison (Rogue)**      |
| **8675509** | 6146           | **Slow**         | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Chains of Ice (Death Knight)**  |
| **8675510** | 60076          | **Time Shock**   | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Thunder Clap (Warrior)**        |
| **8675511** | 60076          | **Time Shock**   | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Cheap Shot (Rogue)**            |
| **8675512** | 60076          | **Time Shock**   | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Death Coil (Death Knight)**     |
| **8675513** | 47736          | **Time Stop**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Shield Wall (Warrior)**         |
| **8675514** | 47736          | **Time Stop**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Vanish (Rogue)**                |
| **8675515** | 47736          | **Time Stop**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Icebound Fortitude (Death Knight)** |

---

### **☠️ Venomancer (The Venomancer class is inspired by: Venomancer from DOTA 2)**  
**Item ID:** 500518 *(Venomancer Scroll)*  

| **New ID** | **Original ID** | **Ability Name**      | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**               |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|--------------------------------------|
| **8675516** | 30917          | **Poison Bolt**      | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **15 Rage**    | **Heroic Throw (Warrior)**          |
| **8675517** | 30917          | **Poison Bolt**      | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Shiv (Rogue)**                    |
| **8675518** | 30917          | **Poison Bolt**      | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Death Coil (Death Knight)**       |
| **8675519** | 39027          | **Poison Shield**    | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Shield Block (Warrior)**           |
| **8675520** | 39027          | **Poison Shield**    | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Evasion (Rogue)**                  |
| **8675521** | 39027          | **Poison Shield**    | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Anti-Magic Shell (Death Knight)**  |
| **8675522** | 30822          | **Poisoned Thrust**  | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Rend (Warrior)**                   |
| **8675523** | 30822          | **Poisoned Thrust**  | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Mutilate (Rogue)**                 |
| **8675524** | 30822          | **Poisoned Thrust**  | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Plague Strike (Death Knight)**     |
| **8675525** | 31288          | **Leech Poison**     | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Bloodthirst (Warrior)**            |
| **8675526** | 31288          | **Leech Poison**     | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Leeching Poison (Rogue)**          |
| **8675527** | 31288          | **Leech Poison**     | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Death Strike (Death Knight)**      |

---

### **🪄 Witch Doctor (The Witch Doctor class is inspired by: Witch Doctor NPCs)**  
**Item ID:** 500519 *(Witch Doctor Scroll)*  

| **New ID** | **Original ID** | **Ability Name**     | **Class (Power Type)**                                                        | **Power Cost** | **Equivalent Ability**              |
|------------|----------------|----------------------|-------------------------------------------------------------------------------|----------------|-------------------------------------|
| **8675528** | 11641          | **Hex**             | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **10 Rage**    | **Intimidating Shout (Warrior)**   |
| **8675529** | 11641          | **Hex**             | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **25 Energy**  | **Blind (Rogue)**                   |
| **8675530** | 11641          | **Hex**             | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **30 RP**      | **Strangulate (Death Knight)**     |
| **8675531** | 11899          | **Healing Ward**     | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **20 Rage**    | **Enraged Regeneration (Warrior)**  |
| **8675532** | 11899          | **Healing Ward**     | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **30 Energy**  | **Crimson Vial (Rogue)**            |
| **8675533** | 11899          | **Healing Ward**     | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **35 RP**      | **Death Pact (Death Knight)**      |
| **8675534** | 3827           | **Ward of Laze**     | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **25 Rage**    | **Shield Block (Warrior)**          |
| **8675535** | 3827           | **Ward of Laze**     | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **35 Energy**  | **Evasion (Rogue)**                 |
| **8675536** | 3827           | **Ward of Laze**     | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **40 RP**      | **Anti-Magic Shell (Death Knight)** |
| **8675537** | 52695          | **Voodoo Doll**      | ![#8B4513](https://placehold.co/15x15/8B4513/8B4513.png) **Warrior (Rage)**  | **30 Rage**    | **Demoralizing Shout (Warrior)**    |
| **8675538** | 52695          | **Voodoo Doll**      | ![#32CD32](https://placehold.co/15x15/32CD32/32CD32.png) **Rogue (Energy)**  | **40 Energy**  | **Distract (Rogue)**                |
| **8675539** | 52695          | **Voodoo Doll**      | ![#8B0000](https://placehold.co/15x15/8B0000/8B0000.png) **Death Knight (Runic Power)** | **50 RP**      | **Blood Boil (Death Knight)**       |








### **Potential Classes (Full)**  

| **Class NAME**         |
|------------------------|

| Web Weaver |
| Wavecaller |
| Taskmaster |
| Evoker |
| Conjurer |
| Mystic |
| Tunneler |





