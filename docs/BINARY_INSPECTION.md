# Binary inspection notes (pre-decompilation)

This is a preliminary inspection of the original compiled scripts. It is not a decompilation and does not establish runtime behavior.

## Tool availability

The current working environment does not contain Sanny Builder or a compatible GTA III SCM/CLEO decompiler executable. The prepared `tools/decompile-all.cmd` has therefore not been run. No source files have been generated from the binaries.

## Static observations

A byte-level inspection of all eleven `.cs` files confirms that they are binary data, not C# source. Running printable-string extraction reveals embedded text-key identifiers and game symbol names.

Examples of embedded identifiers:
- Main menu: `TRAINER`, `CHEAT`
- Ally/ped menu: `ACSPAL`, `ACSP1` and subsequent `ACSP*` keys
- Miscellaneous menu: `RDRON`, `RDROFF`, `WANTED0`, `CASH10` etc.
- Object menu: `OBJSP1` and subsequent `OBJSP*` keys
- Skin menu: `VISSAN-`, `SHIER`, `SHIWU`, `SHIBA` etc.
- Teleport menu: `INDHO`, `JOEYSP`, `TONISP`, `SALSP` etc.
- Time menu: `VISSAN`, `0_DIAN`, `3_DIAN` through `21_DIAN`
- Vehicle menu: model names such as `AMBULAN`, `BANSHEE`, `BARRCKS`
- Weapon menu: `AK47`, `SPAS-12`, `PISTOL`, `FLAMETH`
- Weather menu: `WH_SUN`, `WH_CL`, `WH_RA`, `WH_FOG`, `WH_CS1` etc.
- Mission and several other scripts also contain many GTA III game-variable identifiers.

These strings are useful cross-checks against the accompanying FXT files and can help identify script roles after proper decompilation. They are not enough to reconstruct control flow, opcode arguments, labels, or original source formatting.

## Release-note facts confirmed from the archive

The English and Chinese release notes agree on the following:
- Ten main categories: VEHICLE, TELEPORT, OBJECT, ALLY, WEATHER, MISC, WEAPON, SKIN, TIME, MISSION.
- The menu uses left/right arrows and Enter for selection, Backspace to exit.
- The menu is opened using the tilde key together with a main keyboard number key (not the numeric keypad).
- The author's stated additions include time adjustment (8 time points), skin selection (29 characters), wanted-level clearing, and consolidation of money spawning into MISC.
- The mission-loading component is attributed to Lost_Foever (dim / d88); the release notes say the author adjusted it so Enter confirms loading, for mission numbers 0–79.

## Installation wording requiring care

The release notes say to put all files in the GTA III CLEO folder, while the archive itself places the TXD at `models/TRAINER.txd`. Do not flatten the archive or move the TXD into CLEO based on the prose alone. Preserve the archive's folder structure for a faithful installation test; the exact expected TXD path should be confirmed against the main script's texture-loading instructions or an in-game test.

## Next safe step

Obtain a compatible Sanny Builder installation and run the prepared batch file against copies of the eleven binaries. Review every decompiled output for unknown opcodes and suspicious structure before attempting a recompile. Keep original binaries and extracted text resources untouched.
