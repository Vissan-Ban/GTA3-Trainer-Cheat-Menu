# Project status

Last reviewed: 2026-11-01

## Project objective

Restore and preserve the original October 2022 GTA III Trainer / Cheat Menu as a maintainable, well-documented repository. Repository structure, provenance, reproducibility, and release discipline come before feature upgrades.

## Current phase: repository foundation and preservation

| Area | Status | Notes |
|---|---|---|
| Public project record | Documented | Original GTAinside listing and release credits recorded |
| Archive inventory | Complete | 25 entries inventoried; archive SHA-256 recorded |
| Extracted-file checksums | Recorded | Manifest exists; original payload is not yet committed |
| Repository documentation | In progress | README, restoration, archive audit, binary inspection, contribution and release guidance |
| Original binary payload | Pending | Must be added without modification |
| Script disassembly | Pending | User plans to provide the eleven disassembled text outputs |
| Rebuild verification | Pending | No rebuilt scripts have been verified |
| Installation verification | Pending | Exact TXD load path remains unresolved |
| Clean in-game test | Pending | No repository-based clean-install test recorded |
| Automated checks | Planned | Begin with repository/document/checksum validation; do not claim build validation before a reproducible build exists |
| Functional upgrades | Deferred | Not part of the current phase |

## Source-of-truth policy

- Original archive and original extracted files are the preservation baseline.
- Disassembled output is recovered technical text, not the lost original source.
- Modified scripts and experiments must be kept separate from both originals and raw disassembly.
- Every claim of compatibility or successful testing must identify the tested game, CLEO, and tool versions where relevant.

## Phase gates

### Gate 1 — Repository foundation
- [x] Project overview and historical provenance recorded.
- [x] Archive contents and integrity audited.
- [x] Preservation rules documented.
- [ ] Repository checks and release checklist in place.
- [ ] Original release payload committed or attached with verified checksums.

### Gate 2 — Recoverable source baseline
- [ ] All eleven scripts disassembled.
- [ ] Raw outputs preserved unchanged.
- [ ] Disassembly reviewed and annotated separately.
- [ ] FXT and TXD relationships documented.

### Gate 3 — Reproducible package
- [ ] Build/rebuild procedure documented.
- [ ] Rebuilt outputs reviewed and compared with originals.
- [ ] Installation layout verified.
- [ ] Clean-install regression test recorded.

### Gate 4 — Release
- [ ] All release checklist items completed.
- [ ] Rights and redistribution status reviewed.
- [ ] Version tag and release package created and independently checked.

Feature upgrades begin only after the preservation baseline and release process are dependable.
