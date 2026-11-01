# Original archive audit

Audit input: `GTA3内置修改器.zip` from the conversation attachment workspace.

## Integrity

- Archive size: 2,232,415 bytes
- Archive SHA-256: `662270e75920a6b99092545028359f94ef9dc1da484f42921bdadc76d40d90b2`
- Entries: 25 files
- Total uncompressed size: 4,546,878 bytes
- All extracted file hashes match the checksum manifest in `ORIGINAL_SHA256SUMS.txt`.

## Inventory

| Path | Bytes | Type |
|---|---:|---|
| `CLEO/CHEAT menu.cs` | 80,502 | Compiled CLEO script |
| `CLEO/CHEAT_ally.cs` | 92,433 | Compiled CLEO script |
| `CLEO/CHEAT_misc.cs` | 86,961 | Compiled CLEO script |
| `CLEO/CHEAT_mission.cs` | 81,525 | Compiled CLEO script |
| `CLEO/CHEAT_object.cs` | 91,273 | Compiled CLEO script |
| `CLEO/CHEAT_skin.cs` | 92,771 | Compiled CLEO script |
| `CLEO/CHEAT_teleport.cs` | 84,595 | Compiled CLEO script |
| `CLEO/CHEAT_time.cs` | 84,061 | Compiled CLEO script |
| `CLEO/CHEAT_vehicle.cs` | 91,675 | Compiled CLEO script |
| `CLEO/CHEAT_weapon.cs` | 83,672 | Compiled CLEO script |
| `CLEO/CHEAT_weather.cs` | 86,397 | Compiled CLEO script |
| `CLEO/CLEO_TEXT/CHEAT_ally.fxt` | 1,137 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_misc.fxt` | 555 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_mission.fxt` | 1,931 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_object.fxt` | 1,171 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_skin.fxt` | 809 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_teleport.fxt` | 397 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_time.fxt` | 472 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_vehicle.fxt` | 14 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_weapon.fxt` | 385 | Text keys |
| `CLEO/CLEO_TEXT/CHEAT_weather.fxt` | 454 | Text keys |
| `models/TRAINER.txd` | 1,827,864 | RenderWare TXD texture archive |
| `Reademe_GTA3 CHEAT MENU.txt` | 1,767 | English release notes |
| `game.png` | 1,752,476 | Screenshot |
| `#U770b#U6211  GTA3#U5185#U7f6e#U4fee#U6539#U5668.txt` | 1,581 | Chinese release notes |

## Findings

- The TXD is recognized as a RenderWare texture dictionary used by GTA III PC / GTA VC PS2.
- The Chinese release notes begin with a UTF-8 BOM and decode correctly as UTF-8. Preserve their original bytes and archive filename; the filename itself uses legacy escaped Unicode notation.
- The English release notes decode as UTF-8 without a BOM.
- FXT files are plain text; several contain non-English or mixed-language labels. Do not normalize their encoding or line endings without a separate verified copy.
- The eleven `.cs` files are binary compiled CLEO scripts, not C# source files.
- No decompilation, recompilation, or in-game test was performed during this audit.

## Preservation rule

Treat the ZIP and all extracted files as immutable originals. Any decompiled text, corrected translations, rebuilt scripts, or experimental changes must be stored separately and must never overwrite these files.
