# 13. Exception Handling

## Purpose

This section defines the standard response to manufacturing exceptions encountered while producing repository artifacts.

The objective is to recover from errors without compromising repository integrity, traceability, or reproducibility.

## Guiding Principle

Manufacturing errors shall be corrected through controlled recovery rather than ad hoc workarounds.

The approved source remains authoritative.

## Common Exceptions

### Missing Source Artifact

If a required artifact is missing:

- Pause manufacturing.
- Confirm whether the artifact was generated.
- Restore or regenerate the missing artifact.
- Resume only after local verification.

### Repository Path Confusion

If manufacturing is occurring in an unexpected repository:

- Stop immediately.
- Verify the canonical repository.
- Move or regenerate artifacts as necessary.
- Restart from the Repository Verification Gate.

### Assembly Failure

If Gold Master assembly fails:

- Verify all expected source artifacts exist.
- Review build tool output.
- Correct source issues.
- Rebuild locally.

### Quality Assurance Failure

If QA identifies defects:

- Correct the affected source artifact.
- Re-run assembly if required.
- Repeat QA before committing.

### Version Control Issues

If unintended files appear in Git:

- Review `git status`.
- Stage only intended artifacts.
- Remove or ignore unrelated files before committing.

## Recovery Rule

Recovery actions shall preserve history whenever practical.

Correct the source, rebuild the output, and create a new commit rather than rewriting published history.

## Completion

An exception is considered resolved only after:

- The repository is verified.
- The affected artifact passes QA.
- The working tree reflects the intended state.
- Manufacturing may safely continue.
