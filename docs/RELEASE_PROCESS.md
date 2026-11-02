# Release process

This document separates a preservation-only historical release from future maintained releases. Publishing the original 2022 package does not imply that it has been rebuilt or freshly tested.

## Planned preservation release

- **Tag:** `original-2022`
- **Title:** `Original 2022 Release`
- **Package:** `original-archive/GTA3内置修改器.zip`
- **Release type:** Historical archive; not a new functional or compatibility release.
- **Status:** Preparation documented; GitHub Release has not yet been published.

The original ZIP is committed in the repository and its stored Git blob SHA-1 matches the original file. The planned release asset should be uploaded from that same original ZIP, without repacking or editing it.

## Preservation-release notes

Use the following text for the release description:

> This release preserves the original 2022 version of GTA III Trainer / Cheat Menu for archival and historical reference.
>
> **Included**
> - `GTA3内置修改器.zip` — the original release archive, preserved unchanged.
>
> **Important notes**
> - This is an archival release of the original package, not a newly built version.
> - The original files have not been rebuilt or modified as part of this release.
> - Compatibility with current game installations and mod configurations has not been independently re-verified.
> - Future source recovery, code improvements, and compatibility fixes will be maintained separately from this original release.
> - Attribution and redistribution rights for third-party components remain subject to the original package's terms; no new license is implied.

## Steps to publish the preservation release

1. Open the repository's **Releases** page and choose **Draft a new release**.
2. Create tag `original-2022` targeting the repository commit that contains the archived original ZIP.
3. Set the title to `Original 2022 Release`.
4. Paste the preservation-release notes above.
5. Attach `GTA3内置修改器.zip` directly as a release asset. Use the original ZIP; do not extract and re-compress it.
6. Publish the release. Do not mark it as a pre-release. Do not mark it as the repository's latest functional release if GitHub offers that choice.
7. Download the published asset and verify its SHA-256 against `docs/ORIGINAL_ARCHIVE_RECORD.md`.
8. Record the release URL, tag, asset size, and verification result in the project status.

## Future maintained release gate

A preservation release is intentionally narrower than a maintained functional release. Before any rebuilt or upgraded version is described as verified, complete the checks below.

### Source and provenance
- [x] Original archive is committed with its archive hash recorded.
- [x] Original archive identity was checked against the supplied bytes.
- [ ] Credits and redistribution permissions for all third-party components have been reviewed.

### Technical verification
- [ ] All eleven original scripts have reviewed disassemblies made with GTA III edit mode.
- [ ] Tool version and disassembly procedure are recorded.
- [ ] Any rebuilt scripts compile without unexplained errors or warnings.
- [ ] Rebuilt binaries are compared with originals; differences are documented.
- [ ] Installation paths, including the TXD path, are verified.
- [ ] Clean-install in-game test is completed and recorded.
- [ ] Regression test covers menu opening, navigation, each category, and exit behavior.

### Maintained package
- [ ] Release archive contains only intended runtime files and user documentation.
- [ ] Archive has been extracted and inspected on a clean test copy.
- [ ] SHA-256 manifest is included.
- [ ] README and changelog agree with the actual package.
- [ ] Release notes identify the game version and known limitations.

## Suggested versioning

Use semantic versioning once maintained releases begin:

- 0.x: restoration/testing releases; compatibility and behavior may still change.
- 1.0.0: first verified, documented, reproducible release.
- Patch versions: fixes that do not intentionally change feature scope.
- Minor versions: backward-compatible additions.
- Major versions: incompatible changes or substantial redesign.

Do not label the historical archive as a newly tested or upgraded build.
