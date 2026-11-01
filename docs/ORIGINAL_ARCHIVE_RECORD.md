# Original archive record

## Record identity

- Archive filename received: `GTA3内置修改器.zip`
- Archive SHA-256: `662270e75920a6b99092545028359f94ef9dc1da484f42921bdadc76d40d90b2`
- ZIP entries: 25
- Total uncompressed size: 4,546,878 bytes
- Verification: archive was read in the restoration workspace; every file was extracted in memory and its SHA-256 and byte length recalculated.
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

## Repository upload status

**Checksum verification is complete; binary archival in GitHub is still pending.**

The archive and extracted binary payload have not yet been committed to the Git repository or attached as a GitHub Release asset. The current GitHub connector path available during this step supports text file writes but does not expose a binary upload/release-asset operation. Therefore this record and checksum manifest are documentation of the verified source archive, not a claim that the binary archive is already downloadable from this repository.

The next archival action must transfer the original ZIP unchanged (or add its extracted contents unchanged) through a binary-capable GitHub upload route, then verify the stored file hash against the value above.
