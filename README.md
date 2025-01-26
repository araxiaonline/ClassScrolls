# Custom WoW Classes and Abilities

This repository contains the custom class designs and spell modifications for a **World of Warcraft private server**. Each class is inspired by existing NPC archetypes and includes a set of unique abilities adapted to work for different power types: **Rage**, **Energy**, and **Runic Power**.

## Overview
- **Number of Classes**: 13
- **Number of Abilities**: 45+
- **Power Types**: Rage (`1`), Energy (`3`), Runic Power (`6`)

Each ability has been assigned new spell IDs starting from `8675300` for ease of integration into the database and DBC files.

---

## Class Abilities

### **Aquamancer**  
**Inspired by:** Twilight Aquamancer<br>
**Item ID:** 500500 *(Aquamancer Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675300     | 9672            | Frostbolt            | Warrior (Rage)             |
| 8675301     | 9672            | Frostbolt            | Rogue (Energy)             |
| 8675302     | 9672            | Frostbolt            | Death Knight (Runic Power) |
| 8675303     | 8372            | Summon Aqua Guardian | Warrior (Rage)             |
| 8675304     | 8372            | Summon Aqua Guardian | Rogue (Energy)             |
| 8675305     | 8372            | Summon Aqua Guardian | Death Knight (Runic Power) |

---

### **Astromancer** 
**Inspired by:** Sunfury Astromancer and Novice Astromancer<br>
**Item ID:** 500501 *(Astromancer Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675306     | 35914           | Astral Focus         | Warrior (Rage)             |
| 8675307     | 35914           | Astral Focus         | Rogue (Energy)             |
| 8675308     | 35914           | Astral Focus         | Death Knight (Runic Power) |
| 8675309     | 35917           | Fiery Intellect      | Warrior (Rage)             |
| 8675310     | 35917           | Fiery Intellect      | Rogue (Energy)             |
| 8675311     | 35917           | Fiery Intellect      | Death Knight (Runic Power) |
| 8675312     | 38391           | Scorch               | Warrior (Rage)             |
| 8675313     | 38391           | Scorch               | Rogue (Energy)             |
| 8675314     | 38391           | Scorch               | Death Knight (Runic Power) |
| 8675315     | 37279           | Rain of Fire         | Warrior (Rage)             |
| 8675316     | 37279           | Rain of Fire         | Rogue (Energy)             |
| 8675317     | 37279           | Rain of Fire         | Death Knight (Runic Power) |

---

### **Chaplain** (Inspired by Scarlet Chaplain)

| **New ID**  | **Original ID** | **Ability Name**            | **Class (Power Type)**     |
|-------------|-----------------|-----------------------------|----------------------------|
| 8675318     | 1006            | Inner Fire (Rank 4)         | Warrior (Rage)             |
| 8675319     | 1006            | Inner Fire (Rank 4)         | Rogue (Energy)             |
| 8675320     | 1006            | Inner Fire (Rank 4)         | Death Knight (Runic Power) |
| 8675321     | 6066            | Power Word: Shield (Rank 6) | Warrior (Rage)             |
| 8675322     | 6066            | Power Word: Shield (Rank 6) | Rogue (Energy)             |
| 8675323     | 6066            | Power Word: Shield (Rank 6) | Death Knight (Runic Power) |
| 8675324     | 8362            | Renew                       | Warrior (Rage)             |
| 8675325     | 8362            | Renew                       | Rogue (Energy)             |
| 8675326     | 8362            | Renew                       | Death Knight (Runic Power) |

---

### **Cryomancer** (Inspired by Twilight Cryomancer)

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675327     | 12544           | Frost Armor          | Warrior (Rage)             |
| 8675328     | 12544           | Frost Armor          | Rogue (Energy)             |
| 8675329     | 12544           | Frost Armor          | Death Knight (Runic Power) |
| 8675330     | 9672            | Frostbolt            | Warrior (Rage)             |
| 8675331     | 9672            | Frostbolt            | Rogue (Energy)             |
| 8675332     | 9672            | Frostbolt            | Death Knight (Runic Power) |
| 8675333     | 11831           | Frost Nova           | Warrior (Rage)             |
| 8675334     | 11831           | Frost Nova           | Rogue (Energy)             |
| 8675335     | 11831           | Frost Nova           | Death Knight (Runic Power) |

---

### Power Types
The following values are used to assign **power types** in the DBC files:

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
# Custom WoW Classes and Abilities

This repository contains the custom class designs and spell modifications for a **World of Warcraft private server**. Each class is inspired by existing NPC archetypes and includes a set of unique abilities adapted to work for different power types: **Rage**, **Energy**, and **Runic Power**.

## Overview
- **Number of Classes**: 13
- **Number of Abilities**: 45+
- **Power Types**: Rage (`1`), Energy (`3`), Runic Power (`6`)

Each ability has been assigned new spell IDs starting from `8675300` for ease of integration into the database and DBC files.

---

## Class Abilities

### **Aquamancer** (Inspired by Twilight Aquamancer)

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675300     | 9672            | Frostbolt            | Warrior (Rage)             |
| 8675301     | 9672            | Frostbolt            | Rogue (Energy)             |
| 8675302     | 9672            | Frostbolt            | Death Knight (Runic Power) |
| 8675303     | 8372            | Summon Aqua Guardian | Warrior (Rage)             |
| 8675304     | 8372            | Summon Aqua Guardian | Rogue (Energy)             |
| 8675305     | 8372            | Summon Aqua Guardian | Death Knight (Runic Power) |

---

### **Astromancer** (Inspired by Sunfury Astromancer and Novice Astromancer)

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675306     | 35914           | Astral Focus         | Warrior (Rage)             |
| 8675307     | 35914           | Astral Focus         | Rogue (Energy)             |
| 8675308     | 35914           | Astral Focus         | Death Knight (Runic Power) |
| 8675309     | 35917           | Fiery Intellect      | Warrior (Rage)             |
| 8675310     | 35917           | Fiery Intellect      | Rogue (Energy)             |
| 8675311     | 35917           | Fiery Intellect      | Death Knight (Runic Power) |
| 8675312     | 38391           | Scorch               | Warrior (Rage)             |
| 8675313     | 38391           | Scorch               | Rogue (Energy)             |
| 8675314     | 38391           | Scorch               | Death Knight (Runic Power) |
| 8675315     | 37279           | Rain of Fire         | Warrior (Rage)             |
| 8675316     | 37279           | Rain of Fire         | Rogue (Energy)             |
| 8675317     | 37279           | Rain of Fire         | Death Knight (Runic Power) |

---

### **Chaplain** (Inspired by Scarlet Chaplain)

| **New ID**  | **Original ID** | **Ability Name**            | **Class (Power Type)**     |
|-------------|-----------------|-----------------------------|----------------------------|
| 8675318     | 1006            | Inner Fire (Rank 4)         | Warrior (Rage)             |
| 8675319     | 1006            | Inner Fire (Rank 4)         | Rogue (Energy)             |
| 8675320     | 1006            | Inner Fire (Rank 4)         | Death Knight (Runic Power) |
| 8675321     | 6066            | Power Word: Shield (Rank 6) | Warrior (Rage)             |
| 8675322     | 6066            | Power Word: Shield (Rank 6) | Rogue (Energy)             |
| 8675323     | 6066            | Power Word: Shield (Rank 6) | Death Knight (Runic Power) |
| 8675324     | 8362            | Renew                       | Warrior (Rage)             |
| 8675325     | 8362            | Renew                       | Rogue (Energy)             |
| 8675326     | 8362            | Renew                       | Death Knight (Runic Power) |

---

### **Cryomancer** (Inspired by Twilight Cryomancer)

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675327     | 12544           | Frost Armor          | Warrior (Rage)             |
| 8675328     | 12544           | Frost Armor          | Rogue (Energy)             |
| 8675329     | 12544           | Frost Armor          | Death Knight (Runic Power) |
| 8675330     | 9672            | Frostbolt            | Warrior (Rage)             |
| 8675331     | 9672            | Frostbolt            | Rogue (Energy)             |
| 8675332     | 9672            | Frostbolt            | Death Knight (Runic Power) |
| 8675333     | 11831           | Frost Nova           | Warrior (Rage)             |
| 8675334     | 11831           | Frost Nova           | Rogue (Energy)             |
| 8675335     | 11831           | Frost Nova           | Death Knight (Runic Power) |

---

### Power Types
The following values are used to assign **power types** in the DBC files:

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


This structure should work well for presenting the custom classes and spell info on GitHub. Let me know if you'd like additional customization or tweaks! 😊

---

This structure should work well for presenting the custom classes and spell info on GitHub. Let me know if you'd like additional customization or tweaks! 😊
