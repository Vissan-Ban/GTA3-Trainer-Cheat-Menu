# Release process

This document defines the checks required before publishing a GitHub Release. A version tag must not be created merely because the repository documentation is complete.

## Current release gate

**Status: not ready for a functional release.**

The repository has restoration documentation, but the original binary payload has not yet been committed and the scripts have not yet been disassembled, rebuilt, or tested from this repository. Installation details for the TXD also remain to be verified against the scripts or a clean in-game test.

## Required release contents

A distributable release should contain:

1. The exact original compiled CLEO scripts, unchanged.
2. The matching FXT text files, unchanged.
3. The original TRAINER.txd, unchanged.
4. Corrected installation instructions based on verified paths.
5. A manifest containing SHA-256 hashes for the distributed files.
6. A changelog describing the release and clearly distinguishing preservation from modifications.
7. Credits and redistribution/licensing information that has been confirmed.

Do not publish third-party components unless their redistribution terms permit it. Until licensing and attribution are clarified, keep the repository's rights notice explicit and do not add a permissive license by assumption.

## Pre-release checklist

### Source and provenance
- [ ] Original archive is committed or attached as a release asset, with its archive hash recorded.
- [ ] Extracted original files match the recorded per-file SHA-256 manifest.
- [ ] Original folder structure and filenames are preserved.
- [ ] Credits and redistribution permissions have been reviewed.

### Technical verification
- [ ] All eleven original scripts are present and identified as compiled CLEO binaries.
- [ ] All eleven scripts have a reviewed disassembly made with GTA III edit mode.
- [ ] Tool version and disassembly procedure are recorded.
- [ ] Any rebuilt scripts compile without unexplained errors or warnings.
- [ ] Rebuilt binaries are compared with originals; differences are documented.
- [ ] Installation paths, including the TXD path, are verified.
- [ ] Clean-install in-game test is completed and recorded.
- [ ] Regression test covers menu opening, navigation, each category, and exit behavior.

### Packaging
- [ ] Release archive contains only intended runtime files and user documentation.
- [ ] Archive has been extracted and inspected on a clean test copy.
- [ ] SHA-256 manifest is included.
- [ ] README and changelog agree with the actual package.
- [ ] GitHub Release notes identify the game version and known limitations.

## Suggested versioning

Use semantic versioning only once maintained releases begin:

- 0.x: restoration/testing releases; compatibility and behavior may still change.
- 1.0.0: first verified, documented, reproducible release.
- Patch versions: fixes that do not intentionally change feature scope.
- Minor versions: backward-compatible additions.
- Major versions: incompatible changes or substantial redesign.

A preservation-only upload of the original 2022 package should be labelled as such and must not be presented as a newly tested or upgraded build.

## Release procedure

1. Freeze the intended release contents.
2. Run repository checks and verify the checksum manifest.
3. Perform the clean-install test and record its result.
4. Update CHANGELOG.md, README status, and installation documentation.
5. Create an annotated tag for the exact release commit.
6. Create a GitHub Release from that tag and attach the verified package.
7. After publication, download the release asset and verify its hash and contents.
