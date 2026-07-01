---
id: ARCH-000
title: Architecture Engineering Standard
type: Architecture Standard
status: Approved
version: 1.0.1
release: NDS Release 1.0.1
owner: Novel Development System Architecture
classification: Normative
lifecycle: Stable
created: 2026-07-01
last_updated: 2026-07-01
repository_path: ARCH/ARCH-000 Architecture Engineering Standard.md
depends_on:
  - NDS-002 Engineering Doctrine
  - NDS-003 Constitution of the Novel Development System
  - REP-001 Repository Release Standard
required_by:
  - AG-001 Architecture Glossary
  - ARCH-001
  - MOD-000 Module Standard
  - DOC-000 Document Standard
cross_references:
  - AG-001 Architecture Glossary
  - REP-001 Repository Release Standard
  - NDS-002 Engineering Doctrine
  - NDS-003 Constitution of the Novel Development System
supersedes: null
superseded_by: null
---

# ARCH-000 — Architecture Engineering Standard

**Status:** Approved  
**Version:** 1.0.1  
**Release:** NDS Release 1.0.1  
**Classification:** Normative  
**Repository Path:** `ARCH/ARCH-000 Architecture Engineering Standard.md`

---

## 1. Purpose

ARCH-000 defines the engineering standard for architecture documentation in the Novel Development System repository.

This document governs how architectural knowledge is written, structured, versioned, cross-referenced, reviewed, and released. It exists to keep the architecture stable, readable, traceable, and maintainable across future releases.

ARCH-000 does not redesign the Novel Development System. It defines the standard by which approved architecture artifacts are manufactured and maintained.

---

## 2. Scope

This standard applies to all architecture artifacts in the repository, including:

- architecture standards
- architecture specifications
- architectural reference documents
- architecture-facing repository standards
- normative documents that define system structure, methodology, or governance

This standard also applies to any document that claims architectural authority or defines architectural behavior for the NDS methodology.

This standard does not apply to rough notes, temporary working drafts, private brainstorming files, or unreleased exploratory material unless those materials are promoted into the repository as formal artifacts.

---

## 3. Authority

ARCH-000 derives authority from the governing documents of the Novel Development System.

The document authority order is:

1. NDS Constitution
2. NDS Engineering Doctrine
3. Repository Release Standard
4. Architecture Engineering Standard
5. Architecture Specifications
6. Module Standards
7. Module Specifications
8. Supporting Documentation

Where documents conflict, the higher-authority document controls.

A lower-authority document SHALL NOT override a higher-authority document unless an approved Architecture Decision Record explicitly authorizes the change.

---

## 4. Normative Language

The following terms are normative when used in architecture artifacts.

### 4.1 SHALL

Indicates an absolute requirement.

A document, artifact, process, or repository structure using SHALL must conform exactly unless an approved ADR permits an exception.

### 4.2 SHALL NOT

Indicates an absolute prohibition.

### 4.3 SHOULD

Indicates a recommended practice.

A SHOULD requirement may be bypassed only when the reason is documented and the alternative remains consistent with the approved architecture.

### 4.4 SHOULD NOT

Indicates a discouraged practice.

### 4.5 MAY

Indicates an allowed but optional behavior.

### 4.6 MUST

MUST is permitted only when quoting external standards or when required for clarity. Repository-native architecture artifacts SHOULD prefer SHALL.

---

## 5. Architecture Artifact Requirements

Every architecture artifact SHALL include:

- complete metadata
- clear purpose
- explicit scope
- version information
- status
- repository path
- cross references
- dependency references
- revision history
- normative or non-normative classification
- lifecycle state

Every architecture artifact SHALL be understandable without relying on private conversation history.

Repository artifacts SHALL stand on their own as durable engineering documents.

---

## 6. Metadata Standard

Every architecture artifact SHALL begin with YAML front matter.

The following metadata fields are REQUIRED unless explicitly waived by the governing standard:

```yaml
id:
title:
type:
status:
version:
release:
owner:
classification:
lifecycle:
created:
last_updated:
repository_path:
depends_on:
required_by:
cross_references:
supersedes:
superseded_by:
```

### 6.1 id

The `id` field SHALL contain the artifact identifier.

Examples:

- `ARCH-000`
- `ARCH-001`
- `AG-001`
- `MOD-000`
- `DOC-101`

### 6.2 title

The `title` field SHALL contain the human-readable title of the artifact.

### 6.3 type

The `type` field SHALL describe the document class.

Examples:

- Architecture Standard
- Architecture Specification
- Glossary
- Module Standard
- Document Specification
- Repository Standard

### 6.4 status

The `status` field SHALL indicate the artifact lifecycle status.

Approved status values include:

- Draft
- Review
- Approved
- Deprecated
- Superseded

### 6.5 version

The `version` field SHALL use the release version of the artifact.

### 6.6 release

The `release` field SHALL identify the repository release containing the artifact.

### 6.7 owner

The `owner` field SHALL identify the accountable ownership domain.

### 6.8 classification

The `classification` field SHALL identify whether the document is normative or informative.

### 6.9 lifecycle

The `lifecycle` field SHALL identify whether the artifact is stable, active, draft, deprecated, or retired.

### 6.10 repository_path

The `repository_path` field SHALL show the intended repository location.

### 6.11 depends_on

The `depends_on` field SHALL list documents this artifact depends on.

### 6.12 required_by

The `required_by` field SHOULD list known downstream artifacts.

### 6.13 cross_references

The `cross_references` field SHALL list related repository documents.

### 6.14 supersedes and superseded_by

These fields SHALL be present even when null.

---

## 7. Required Document Structure

Architecture artifacts SHOULD follow this section order unless the artifact type requires a specialized structure:

1. Metadata
2. Title block
3. Purpose
4. Scope
5. Authority
6. Definitions or terminology notes
7. Normative requirements
8. Structural model or conceptual model
9. Dependency model
10. Cross references
11. Compliance requirements
12. Revision history

A document MAY add sections when necessary, but SHALL NOT omit required sections without justification.

---

## 8. Writing Standard

Architecture artifacts SHALL be written in clear, direct, repository-quality prose.

The writing style SHALL be:

- precise
- stable
- explicit
- implementation-neutral where appropriate
- consistent with the approved architecture
- free of brainstorming language
- free of speculative design alternatives unless the document is specifically an ADR or analysis artifact

Architecture artifacts SHALL NOT include:

- casual chat transcript language
- unresolved design questions
- unapproved architectural options
- implementation promises outside the scope of the artifact
- placeholders such as “TBD” unless explicitly allowed by the release standard
- references to private conversation context

The preferred sentence form is direct and declarative.

---

## 9. Cross-Reference Standard

Cross references SHALL identify the referenced artifact by artifact ID and title.

Preferred format:

```markdown
See [AG-001 — Architecture Glossary](../AG/AG-001%20Architecture%20Glossary.md).
```

When relative links are not stable or not yet available, a text reference is acceptable:

```markdown
See AG-001 — Architecture Glossary.
```

Cross references SHALL be used when a document depends on another document for terminology, authority, methodology, or repository behavior.

Architecture artifacts SHOULD NOT duplicate definitions already controlled by AG-001.

---

## 10. Dependency Standard

Architecture documents SHALL declare dependencies explicitly.

A dependency exists when one artifact requires another artifact in order to be interpreted correctly.

Dependencies SHALL be listed in metadata and SHOULD also be described in the body when they materially affect interpretation.

A document SHALL NOT create hidden dependencies.

---

## 11. Versioning Standard

Architecture artifacts SHALL use the repository release version unless a specific artifact-level versioning rule has been approved.

Version changes SHALL be meaningful and traceable.

A version change SHOULD occur when:

- normative requirements change
- artifact structure changes
- dependencies change
- cross references change materially
- release packaging changes
- an artifact is superseded or deprecated

Editorial corrections MAY occur within a patch release when they do not alter normative meaning.

---

## 12. ADR Integration

Architectural changes SHALL be controlled through Architecture Decision Records when the change affects:

- system structure
- methodology behavior
- repository governance
- document authority
- naming conventions
- artifact taxonomy
- release standards
- dependency relationships

No architecture document SHALL introduce a new architectural concept during manufacturing unless an approved ADR authorizes it.

Manufacturing work SHALL produce approved artifacts. It SHALL NOT reopen architectural design.

---

## 13. Repository Placement Standard

Architecture artifacts SHALL be placed in the directory assigned by their artifact family.

Expected placement examples:

```text
ARCH/ARCH-000 Architecture Engineering Standard.md
AG/AG-001 Architecture Glossary.md
MOD/MOD-000 Module Standard.md
DOC/DOC-101 Story Dossier Specification.md
REP/REP-001 Repository Release Standard.md
```

Release ZIP files SHOULD preserve repository-relative paths so that artifacts can be extracted into the repository root.

---

## 14. File Naming Standard

Artifact filenames SHALL begin with the artifact ID followed by the artifact title.

Preferred format:

```text
ARCH-000 Architecture Engineering Standard.md
AG-001 Architecture Glossary.md
```

Filenames SHALL be readable, stable, and suitable for Git-based version control.

Filenames SHOULD avoid punctuation that creates path or shell compatibility problems.

---

## 15. Quality Requirements

Every manufactured architecture artifact SHALL pass the following checks before release:

- metadata exists and is complete
- artifact ID matches filename
- version matches release
- status is correct
- classification is correct
- repository path is correct
- cross references are present
- dependencies are declared
- revision history exists
- no unresolved placeholders remain
- no unapproved architecture has been introduced
- language is clear and normative where required
- document can stand independently inside the repository

---

## 16. Compliance Checklist

Before release, ARCH artifacts SHALL be reviewed against this checklist.

| Check | Requirement | Status |
|---|---|---|
| Metadata | Complete YAML front matter exists | Required |
| Identity | Artifact ID and filename match | Required |
| Version | Version matches release | Required |
| Status | Lifecycle status is declared | Required |
| Scope | Document scope is explicit | Required |
| Authority | Authority is stated where applicable | Required |
| Cross References | Related artifacts are listed | Required |
| Dependencies | Upstream dependencies are listed | Required |
| Traceability | Downstream usage is identified where known | Recommended |
| Revision History | Revision history is present | Required |
| Architecture Freeze | No unapproved architecture introduced | Required |
| Repository Placement | File path follows repository convention | Required |

---

## 17. Gate Relationship

ARCH-000 supports Gate A for Sprint 1 of Release 1.0.1.

Gate A SHALL verify that:

- ARCH-000 exists
- AG-001 exists
- both artifacts contain complete metadata
- both artifacts use Release 1.0.1 versioning
- both artifacts cross-reference each other where appropriate
- both artifacts are repository-ready Markdown
- no unapproved architecture has been introduced

---

## 18. Cross References

This artifact references:

- AG-001 — Architecture Glossary
- REP-001 — Repository Release Standard
- NDS-002 — Engineering Doctrine
- NDS-003 — Constitution of the Novel Development System

---

## 19. Revision History

| Version | Date | Status | Notes |
|---|---:|---|---|
| 1.0.1 | 2026-07-01 | Approved | Manufactured as the Release 1.0.1 architecture engineering standard. |
