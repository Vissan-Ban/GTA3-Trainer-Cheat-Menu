# GTA III Trainer / Cheat Menu

A CLEO-based trainer and visual cheat menu for the original PC version of **Grand Theft Auto III**.

Created by **Vissan Ban** in October 2022. This repository is being restored from the original release package. Original compiled scripts and assets are the preservation baseline; recovered/disassembled text is stored separately and must never silently replace the originals.

## Features recorded in the original release

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

The main menu controller is `CHEAT menu.cs`. The original package also contains ten FXT text files and the `TRAINER.txd` menu texture.

## Controls recorded in the original release notes

- Press **`~` + a number-row key** to open/use the menu (not the numeric keypad).
- **Left / Right Arrow**: move through options.
- **Enter**: confirm.
- **Backspace**: exit.

These are historical release-note details; they are not a claim of a fresh in-game verification.

## Installation

**Installation instructions are currently under verification.** The archive stores scripts under `CLEO/`, FXT files under `CLEO/CLEO_TEXT/`, and the texture dictionary under `models/TRAINER.txd`. Preserve that layout while working with the original package. The exact runtime TXD loading path must be confirmed from the main menu script or a clean in-game test before publishing a definitive installation guide.

See [Installation status](docs/INSTALLATION_STATUS.md).

## Project status

This project is currently focused on repository foundations and preservation, not feature upgrades.

- [x] Original 2022 release archive received and inventoried.
- [x] Original archive and extracted-file SHA-256 manifest recorded.
- [x] Historical release information and credits documented.
- [x] Preservation, contribution, and release procedures documented.
- [x] Basic GitHub Actions repository checks added.
- [ ] Original binary package committed to the repository or attached as a verified release asset.
- [ ] All 11 compiled CLEO scripts disassembled using GTA III edit mode.
- [ ] Disassembly reviewed and stored separately from originals.
- [ ] Rebuild/reproducibility and installation paths verified.
- [ ] Clean-install in-game regression test completed.

The detailed phase checklist is in [Project status](docs/PROJECT_STATUS.md).

**Important:** the original `.cs` files are compiled CLEO/SCM binary scripts, not C# source. Sanny Builder can disassemble them into editable text, but comments and original variable names are generally not recoverable. Disassembled output is not the lost original authoring source.

## Documentation

- [Restoration method and verification plan](docs/RESTORATION.md)
- [Project status and phase gates](docs/PROJECT_STATUS.md)
- [Original archive audit](docs/ARCHIVE_AUDIT.md)
- [Original SHA-256 manifest](docs/ORIGINAL_SHA256SUMS.txt)
- [Historical public release record](docs/UPSTREAM_RELEASE.md)
- [Preliminary binary inspection](docs/BINARY_INSPECTION.md)
- [Installation evidence and unresolved paths](docs/INSTALLATION_STATUS.md)
- [Release readiness checklist](docs/RELEASE_PROCESS.md)
- [Contribution and preservation rules](CONTRIBUTING.md)
- [Changelog](CHANGELOG.md)

## Credits and rights

The original October 2022 readme credits **Bilinmeyen Bey** as the basis for the trainer, and **Lost_Foever (dim / d88)** for the mission-loading feature. The release notes also describe changes by Vissan Ban to the mission-loading flow and the addition of time-adjustment and skin-change options. These attributions are preserved from the supplied release notes.

No license has been added because the supplied package did not establish redistribution rights for every included component. Do not assume that the project is public domain or that third-party portions may be relicensed.

## Development scope

The target is **Grand Theft Auto III for PC**, not Vice City or San Andreas. Use Sanny Builder's GTA III edit mode for script recovery. See [Contributing](CONTRIBUTING.md) before proposing changes.
