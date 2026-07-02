# 10. Git Workflow

## Purpose

This section defines the standard Git workflow for manufacturing repository artifacts within the Novel Development System.

The objective is to preserve a clean, traceable project history while ensuring that every manufacturing milestone can be reproduced from version control.

## Standard Workflow

The recommended workflow is:

1. Manufacture repository artifacts.
2. Download and save each artifact to the canonical repository.
3. Assemble the Gold Master locally.
4. Perform Quality Assurance.
5. Review repository changes.
6. Stage changes.
7. Commit with a descriptive message.
8. Push to the remote repository.
9. Create a release tag when appropriate.

## Commit Guidelines

Each commit should represent a single logical engineering milestone.

Examples include:

- Manufacturing a complete module.
- Improving build tooling.
- Correcting repository defects.
- Completing a release.

Avoid combining unrelated engineering changes into a single commit.

## Repository Verification

Before every commit:

- Review `git status`.
- Review staged changes.
- Confirm only intended files are included.

## Release Tags

Release tags should identify stable repository milestones.

Published tags are immutable and shall not be moved.

Subsequent refinements shall use new version tags rather than rewriting historical releases.

## Guiding Principle

Git is the authoritative history of repository manufacturing.

Every commit should explain not only what changed, but why the change represents an improvement to the repository.
