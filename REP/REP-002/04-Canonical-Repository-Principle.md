# 04. Canonical Repository Principle

## Purpose

The Canonical Repository Principle establishes a single authoritative repository location for all official NDS manufacturing activities.

This principle was adopted following the MOD-101 manufacturing effort, during which multiple local repository copies with similar names created path ambiguity and manufacturing errors.

## Principle

All official manufacturing shall occur against one verified repository root.

Only the canonical repository may receive:

- Manufactured source artifacts
- Gold Master assemblies
- Git commits
- Release tags
- Official engineering changes

Development copies may exist for experimentation or backup, but they shall not be used for official manufacturing.

## Repository Verification

Before every manufacturing session, verify:

- The current working directory (`pwd`)
- The Git repository root (`git rev-parse --show-toplevel`)
- Repository status (`git status`)

Manufacturing shall not begin until the repository root has been confirmed.

## Canonical Repository

The authoritative repository location for this implementation is:

`C:\Users\joeda\Documents\Novel-Development-System`

Future repository relocations shall update this reference and all associated tooling.

## Rationale

A single canonical repository eliminates ambiguity, prevents artifacts from being saved into alternate copies, and ensures that assembly, version control, and release activities operate against one consistent source of truth.
