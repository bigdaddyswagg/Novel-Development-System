# 09. Quality Assurance

## Purpose

Quality Assurance (QA) ensures that every manufactured repository artifact meets the engineering standards of the Novel Development System before it is committed or released.

QA is performed throughout manufacturing, not only at the end.

## Artifact QA

Each manufactured artifact shall be verified for:

- Correct file name.
- Correct repository location.
- Repository-quality Markdown.
- Heading hierarchy.
- Numbering consistency.
- Preservation of approved source content.
- Correction of objective conversion defects only.

## Assembly QA

Before accepting a Gold Master:

- Confirm all required source artifacts are present.
- Assemble using the approved local build tool.
- Verify section ordering.
- Verify document completeness.
- Check for duplicate headings or separators.
- Ensure no source content has been omitted.

## Repository QA

Before committing:

- Verify repository identity.
- Review `git status`.
- Review changes to be committed.
- Confirm no unintended files are included.

## Release QA

Before tagging a release:

- Gold Master successfully assembled.
- Working tree clean.
- Changes committed and pushed.
- Final verification completed.

## Guiding Principle

Quality Assurance is a continuous engineering activity.

Every manufacturing stage should leave the repository in a better, more reliable state than it was before.
