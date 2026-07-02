# 11. Release Workflow

## Purpose

This section defines the standard release process for repository-quality artifacts within the Novel Development System.

A release represents a verified engineering milestone. It shall occur only after manufacturing, assembly, quality assurance, and repository validation have been successfully completed.

## Release Sequence

1. Complete manufacturing of all source artifacts.
2. Verify all source artifacts are present in the canonical repository.
3. Assemble the Gold Master locally.
4. Perform final Quality Assurance.
5. Review repository changes.
6. Commit approved changes.
7. Push commits to the remote repository.
8. Create an annotated release tag.
9. Push the release tag.
10. Verify the published release.

## Release Checklist

Before creating a release tag, confirm:

- Gold Master assembled successfully.
- Source artifacts preserved.
- Repository working tree is clean.
- All intended commits have been pushed.
- Version number is correct.
- Release notes are complete, if applicable.

## Versioning

Release tags shall follow semantic versioning where practical.

Published release tags are historical records and shall not be moved or overwritten.

Subsequent corrections shall use a new version identifier.

## Guiding Principle

A release is more than a completed document.

It is a verified, reproducible repository milestone that can be rebuilt from its approved source artifacts.
