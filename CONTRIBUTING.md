# Contributing

Thank you for helping restore the GTA III Trainer / Cheat Menu.

## Project scope

This repository first preserves and documents the October 2022 GTA III release. Functional changes and feature upgrades are a later phase. Do not silently change original behavior during preservation.

## Preservation rules

- Treat the supplied original archive and its extracted files as immutable reference material.
- Never overwrite an original compiled .cs, FXT, TXD, screenshot, or readme with a rebuilt or edited file.
- Keep recovered/disassembled text under source/disassembled/.
- Keep modified or experimental scripts separate from the recovered baseline (for example, under source/modified/).
- Record SHA-256 hashes for every original file added to the repository.
- Preserve original filenames, directory structure, and text encodings unless a separate, documented conversion is required.

## Script recovery

- Target the original PC release of Grand Theft Auto III.
- Use Sanny Builder's GTA III edit mode for disassembly and compilation.
- Label disassembled text as recovered/disassembled output, not original authoring source.
- Record the tool version and relevant command/options used.
- Review unknown opcodes and compiler warnings before treating output as usable.
- Never replace a release binary until rebuilt output has been reviewed and tested.

## Changes and pull requests

- Keep each change focused and explain why it is needed.
- Documentation-only changes should not imply that a feature has been tested.
- For script changes, include before/after notes, tool version, compile result, and in-game test result where available.
- Do not add third-party code or assets without recording provenance and checking redistribution permissions.
- Do not add a license or claim relicensing rights without confirmation from the relevant rights holders.

## Reporting a problem

Please include the game version, CLEO version, Sanny Builder version, installation layout, reproduction steps, and any crash address or log that is relevant. Remove personal information from logs before posting.
