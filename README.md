# Custom Azeroth WoW Sub-Class Scrolls

This repository contains the class scroll designs and spell modifications for a **Azerothcore WOTLK 3.3.5**. Each class is inspired by existing NPC archetypes and includes a set of unique abilities adapted to work for different power types: **Rage**, **Energy**, and **Runic Power**.

---

## Overview
- **Number of Classes**: 13
- **Number of Abilities**: 45+
- **Power Types**: Rage (`1`), Energy (`3`), Runic Power (`6`)

Each ability has been assigned new spell IDs starting from `8675300` for ease of integration into the database and DBC files.

---

## Class Abilities

### **Aquamancer**  
**Inspired by:** Twilight Aquamancer  
**Item ID:** 500500 *(Aquamancer Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675300     | 9672            | Frostbolt            | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675301     | 9672            | Frostbolt            | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675302     | 9672            | Frostbolt            | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675303     | 8372            | Summon Aqua Guardian | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675304     | 8372            | Summon Aqua Guardian | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675305     | 8372            | Summon Aqua Guardian | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |

---

### **Astromancer**  
**Inspired by:** Sunfury Astromancer and Novice Astromancer  
**Item ID:** 500501 *(Astromancer Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675306     | 35914           | Astral Focus         | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675307     | 35914           | Astral Focus         | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675308     | 35914           | Astral Focus         | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675309     | 35917           | Fiery Intellect      | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675310     | 35917           | Fiery Intellect      | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675311     | 35917           | Fiery Intellect      | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675312     | 38391           | Scorch               | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675313     | 38391           | Scorch               | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675314     | 38391           | Scorch               | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675315     | 37279           | Rain of Fire         | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675316     | 37279           | Rain of Fire         | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675317     | 37279           | Rain of Fire         | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |

---

### **Chaplain**  
**Inspired by:** Scarlet Chaplain  
**Item ID:** 500502 *(Chaplain Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**            | **Class (Power Type)**     |
|-------------|-----------------|-----------------------------|----------------------------|
| 8675318     | 1006            | Inner Fire (Rank 4)         | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675319     | 1006            | Inner Fire (Rank 4)         | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675320     | 1006            | Inner Fire (Rank 4)         | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675321     | 6066            | Power Word: Shield (Rank 6) | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675322     | 6066            | Power Word: Shield (Rank 6) | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675323     | 6066            | Power Word: Shield (Rank 6) | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675324     | 8362            | Renew                       | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675325     | 8362            | Renew                       | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675326     | 8362            | Renew                       | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |

---

### **Cryomancer**  
**Inspired by:** Twilight Cryomancer  
**Item ID:** 500503 *(Cryomancer Scroll)*  

| **New ID**  | **Original ID** | **Ability Name**      | **Class (Power Type)**     |
|-------------|-----------------|-----------------------|----------------------------|
| 8675327     | 12544           | Frost Armor          | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675328     | 12544           | Frost Armor          | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675329     | 12544           | Frost Armor          | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675330     | 9672            | Frostbolt            | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675331     | 9672            | Frostbolt            | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675332     | 9672            | Frostbolt            | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |
| 8675333     | 11831           | Frost Nova           | <span style="color:brown;">**Warrior (Rage)**</span>             |
| 8675334     | 11831           | Frost Nova           | <span style="color:green;">**Rogue (Energy)**</span>             |
| 8675335     | 11831           | Frost Nova           | <span style="color:darkred;">**Death Knight (Runic Power)**</span> |

---

### **Remaining Classes**  
All other classes (e.g., **Geomancer**, **Harpooner**, etc.) will follow the same format as above. They include their **item ID**, **class description**, and **abilities table**.


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

