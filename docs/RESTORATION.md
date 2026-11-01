# Restoration notes

## Source archive inventory

The supplied archive `GTA3内置修改器.zip` contains 25 files (about 4.55 MB uncompressed):

- 11 compiled CLEO `.cs` scripts:
  - `CHEAT menu.cs`
  - `CHEAT_ally.cs`
  - `CHEAT_misc.cs`
  - `CHEAT_mission.cs`
  - `CHEAT_object.cs`
  - `CHEAT_skin.cs`
  - `CHEAT_teleport.cs`
  - `CHEAT_time.cs`
  - `CHEAT_vehicle.cs`
  - `CHEAT_weapon.cs`
  - `CHEAT_weather.cs`
- 10 FXT text files under `CLEO/CLEO_TEXT/`
- `models/TRAINER.txd`
- Two original instruction/readme text files
- One in-game screenshot

The archive is the preservation source. Keep an untouched copy outside the working tree as well.

## Recovery method

The original Sanny Builder source files were not retained. The `.cs` files are compiled SCM-format CLEO scripts. They can be disassembled with Sanny Builder:

```bat
sanny.exe --decompile "CLEO\\CHEAT menu.cs" "source\\disassembled\\CHEAT menu.txt" --game gta3
```

Use the **GTA III** edit mode. Do not use the Vice City or San Andreas mode: these games use different script formats and opcode definitions.

Sanny Builder's official CLI supports `--decompile` (or `-d`), an optional output path, and `--game gta3`. See:
- https://docs.sannybuilder.com/editor/cli
- https://docs.sannybuilder.com/edit-modes

Disassembly is not a restoration of the lost original source byte-for-byte. Comments, original variable names, formatting, and some high-level source constructs may be lost. Keep the disassembled output separate from the original binaries and review it before treating it as maintainable source.

## Verification plan

For each script:

1. Record the original binary's SHA-256.
2. Disassemble with the GTA III mode and save the raw output unchanged.
3. Review the output for unknown opcodes, malformed labels, and suspicious data.
4. Recompile a copy using the same GTA III mode.
5. Compare the rebuilt binary with the original. A byte-for-byte mismatch is not automatically a functional mismatch, but every difference must be understood.
6. Test the original and rebuilt versions in-game, one module at a time, before replacing anything.

Do not rename variables, refactor control flow, change opcodes, or modernize syntax during the initial recovery pass. First establish a reliable baseline.

## Attribution and licensing

The original October 2022 notes say the trainer is based on Bilinmeyen Bey and credit Lost_Foever (dim / d88) for the mission-loading script. Preserve these attributions unless the original authorship history is clarified. No license was supplied with the archive; do not add a license file or claim permission to redistribute third-party contributions without confirming the relevant terms.
