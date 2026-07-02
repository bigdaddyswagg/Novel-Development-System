# 05. Manufacturing Workflow

## Purpose

This section defines the standard manufacturing workflow used to produce repository-quality artifacts within the Novel Development System.

The workflow is sequential, repeatable, and designed to ensure that every manufactured artifact can be reproduced from its approved source.

## Standard Workflow

```text
Approved Source
        ↓
Manufacture One Artifact
        ↓
Repository QA
        ↓
Download Artifact
        ↓
Save to Canonical Repository
        ↓
Verify Local Placement
        ↓
Repeat Until Complete
        ↓
Local Gold Master Assembly
        ↓
Final QA
        ↓
Git Commit
        ↓
Git Push
        ↓
Release Tag
```

## Workflow Rules

1. Manufacture one artifact per response.
2. Download and save each artifact before requesting the next.
3. Verify that the artifact exists in the correct repository location.
4. Do not assemble a Gold Master until all source artifacts are present.
5. Perform final quality assurance on the assembled document before committing it.
6. Commit source artifacts and assembled output together whenever practical.
7. Tag only validated releases.

## Manufacturing Gates

The workflow contains mandatory verification gates:

- Repository Verification Gate
- Artifact Verification Gate
- Assembly Verification Gate
- Release Verification Gate

Manufacturing shall not proceed past a gate until the required checks have been completed successfully.

## Guiding Principle

The manufacturing workflow exists to maximize reliability, traceability, and repeatability while minimizing the risk of lost artifacts, incomplete assemblies, or repository inconsistencies.
