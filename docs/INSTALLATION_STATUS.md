# Installation status

## Evidence currently available

The original release notes and public release listing do not describe the runtime paths consistently enough to treat every path as confirmed.

- The supplied archive stores the eleven compiled scripts under CLEO/.
- The ten FXT files are stored under CLEO/CLEO_TEXT/.
- The texture dictionary is stored at models/TRAINER.txd.
- The public release description says to place the cleo and models folders in the GTA III root and requires cleo.asi.
- Some wording in the supplied readme is ambiguous about whether all files belong inside the CLEO folder.

## Current safe handling

For preservation and analysis, keep the archive's original directory structure unchanged:

    Original release/
    ├── CLEO/
    │   ├── CHEAT menu.cs
    │   ├── CHEAT_*.cs
    │   └── CLEO_TEXT/
    │       └── *.fxt
    └── models/
        └── TRAINER.txd

This is an archive layout, not yet a final verified installation recipe.

## Outstanding verification

The exact runtime path used to load TRAINER.txd must be confirmed by inspecting the main menu script's texture-loading code and/or testing on a clean GTA III installation. Do not move or duplicate the TXD based only on assumptions.

Until that check is complete, user-facing installation instructions must label the TXD location as unverified. Do not describe the package as installation-tested.
