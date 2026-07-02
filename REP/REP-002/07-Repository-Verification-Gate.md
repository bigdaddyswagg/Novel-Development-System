# 07. Repository Verification Gate

## Purpose

The Repository Verification Gate is the first mandatory checkpoint of every manufacturing session.

Its purpose is to confirm that manufacturing is being performed against the correct repository before any new artifacts are created.

## Verification Checklist

Before generating the next artifact, verify:

- The current working directory (`pwd`).
- The repository root (`git rev-parse --show-toplevel`).
- Repository status (`git status`).
- The active branch.
- The canonical repository path.

## Expected Repository

Official manufacturing shall be performed from the canonical repository.

Example:

`C:\Users\joeda\Documents\Novel-Development-System`

## Stop Condition

If any verification step fails, manufacturing shall pause until the repository identity has been corrected.

No new artifacts shall be manufactured while repository identity is uncertain.

## Rationale

This verification gate was established following the MOD-101 manufacturing effort, where multiple local copies of the repository caused path confusion and incomplete assemblies.

Verifying the repository before manufacturing eliminates an entire class of preventable engineering errors.

## Manufacturing Gate

A manufacturing session may proceed only after all of the following are confirmed:

- Repository root verified.
- Working tree understood.
- Correct branch selected.
- Canonical repository confirmed.
- Previous artifact downloaded and saved.
