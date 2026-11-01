# GTA III Trainer / Cheat Menu

A CLEO-based trainer and visual cheat menu for the original PC version of **Grand Theft Auto III**.

Created by **Vissan Ban** in October 2022. This repository is being restored from the original release package. Original compiled scripts and assets are treated as the preservation baseline; recovered/disassembled source will be stored separately and will not silently replace the originals.

## Features

The menu contains ten feature categories:

| Menu | Script |
|---|---|
| Vehicle spawning | `CHEAT_vehicle.cs` |
| Teleport | `CHEAT_teleport.cs` |
| Object spawning | `CHEAT_object.cs` |
| Allies / peds | `CHEAT_ally.cs` |
| Weather | `CHEAT_weather.cs` |
| Miscellaneous | `CHEAT_misc.cs` |
| Weapons | `CHEAT_weapon.cs` |
| Skin / player model | `CHEAT_skin.cs` |
| Time adjustment | `CHEAT_time.cs` |
| Mission loading | `CHEAT_mission.cs` |

The main menu controller is `CHEAT menu.cs`. The release also includes matching FXT text files and the `TRAINER.txd` menu texture.

## Controls

According to the original release notes:

- Press **`~` + a number-row key** to open/use the menu (not the numeric keypad).
- **Left / Right Arrow**: move through options.
- **Enter**: confirm.
- **Backspace**: exit.

## Installation

1. Install a CLEO library compatible with your GTA III installation.
2. Copy the original release's CLEO scripts and `CLEO_TEXT` folder into the game's CLEO directory, preserving the folder structure.
3. Place `TRAINER.txd` in the location expected by the scripts. This path will be confirmed during restoration and in-game testing.

Do not mix files from different revisions. Compatibility and installation details will be tightened after the original package is committed and tested.

## Project status

- [x] Original 2022 release archive received and inventoried.
- [x] Original instructions and attributions recorded.
- [x] Restoration notes and a local batch disassembly helper added.
- [ ] Original binary package committed to the repository.
- [ ] All 11 compiled CLEO scripts disassembled using the GTA III edit mode.
- [ ] Recovered source reviewed and normalized without changing behavior.
- [ ] Recovered source recompiled and compared against the original binaries.
- [ ] In-game regression test on a clean GTA III installation.
- [ ] Automated build workflow.

**Important:** the original `.cs` files are compiled CLEO/SCM binary scripts, not C# source. Sanny Builder can disassemble them into editable text, but comments and original variable names are generally not recoverable. Any recovered text will be labelled as disassembled source, not the lost original source.

## Credits

The original October 2022 readme credits **Bilinmeyen Bey** as the basis for the trainer, and **Lost_Foever (dim / d88)** for the mission-loading feature. The notes also state that the author fixed the mission-loading flow and added/compiled the time-adjustment and skin-change options. These attributions are preserved from the supplied release notes.

## Development

The target is **GTA III**, not Vice City or San Andreas. Use the GTA III edit mode in Sanny Builder when disassembling or compiling. See [Restoration notes](docs/RESTORATION.md).

No license has been added yet. Please do not assume that the project is public domain or that third-party portions may be relicensed.
