# Original archive record

## Record identity

- Archive filename received: `GTA3内置修改器.zip`
- Archive SHA-256: `662270e75920a6b99092545028359f94ef9dc1da484f42921bdadc76d40d90b2`
- ZIP entries: 25
- Total uncompressed size: 4,546,878 bytes
- Verification: the original archive was hashed in the restoration workspace; the GitHub-stored object was independently checked by comparing its Git blob SHA-1 with the Git blob SHA-1 calculated from the local original bytes. The values match exactly.
- Verification date: 2026-11-01

This record identifies the exact archive supplied for this restoration. It does not prove that it is the only historical build ever distributed.

## Contents

| Category | Count | Notes |
|---|---:|---|
| Compiled CLEO scripts | 11 | Stored under `CLEO/`; binary files, not C# source |
| FXT text files | 10 | Stored under `CLEO/CLEO_TEXT/` |
| Texture dictionary | 1 | `models/TRAINER.txd` |
| Release/readme text files | 2 | Original documentation |
| Screenshot | 1 | `game.png` |
| **Total** | **25** | No entries were intentionally modified |

## Preservation decision

The supplied ZIP is the immutable reference archive. Its internal paths, filenames, bytes, and text encodings are to be preserved. Any extracted copy placed in the repository must match the per-file SHA-256 values in [ORIGINAL_SHA256SUMS.txt](ORIGINAL_SHA256SUMS.txt).

Do not overwrite original files with disassembled text, rebuilt scripts, corrected readmes, or experimental assets. Put recovered text under `source/disassembled/` and modified work under `source/modified/`.

## Repository archival status

<badge>Archived and verified</badge>

The original ZIP is committed at [`original-archive/GTA3内置修改器.zip`](../original-archive/GTA3%E5%86%85%E7%BD%AE%E4%BF%AE%E6%94%B9%E5%99%A8.zip). Its stored Git blob SHA-1 is `9bfc41402efce48824916209730682aa3feb8cff`, which exactly matches the Git blob SHA-1 computed from the original local file (2,232,415 bytes). The independently recorded SHA-256 of the original file is listed above.

This confirms that GitHub stores the same bytes as the supplied archive. The GitHub Release publication is a separate step and has not yet been completed.
