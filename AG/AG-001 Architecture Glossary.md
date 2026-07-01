---
id: AG-001
title: Architecture Glossary
type: Glossary
status: Approved
version: 1.0.1
release: NDS Release 1.0.1
owner: Novel Development System Architecture
classification: Normative
lifecycle: Stable
created: 2026-07-01
last_updated: 2026-07-01
repository_path: AG/AG-001 Architecture Glossary.md
depends_on:
  - ARCH-000 Architecture Engineering Standard
required_by:
  - ARCH-000 Architecture Engineering Standard
  - ARCH-001
  - MOD-000 Module Standard
  - DOC-000 Document Standard
cross_references:
  - ARCH-000 Architecture Engineering Standard
  - REP-001 Repository Release Standard
supersedes: null
superseded_by: null
---

# AG-001 — Architecture Glossary

**Status:** Approved  
**Version:** 1.0.1  
**Release:** NDS Release 1.0.1  
**Classification:** Normative  
**Repository Path:** `AG/AG-001 Architecture Glossary.md`

---

## 1. Purpose

AG-001 is the authoritative glossary for architecture terminology used in the Novel Development System repository.

Its purpose is to prevent terminology drift by giving repository users a single controlled source for architecture-facing definitions.

---

## 2. Scope

This glossary applies to:

- architecture documents
- repository standards
- module standards
- document specifications
- release documentation
- any artifact that uses architecture terminology

Definitions in AG-001 are normative unless explicitly identified as explanatory.

---

## 3. Authority

AG-001 is governed by ARCH-000.

When another artifact uses a term defined in AG-001, the AG-001 definition controls unless a more specific approved document defines a narrower context.

A document SHALL NOT redefine a glossary term in a conflicting way.

---

## 4. Glossary Terms

### ADR

Architecture Decision Record.

An ADR records an approved architectural decision, including the context, decision, consequences, and affected artifacts.

### Architecture

The approved structural design of the Novel Development System, including its document families, methodology layers, authority model, release model, dependency model, and artifact relationships.

### Architecture Artifact

A repository artifact that defines, governs, explains, or constrains the architecture of the Novel Development System.

### Architecture Freeze

A release state in which architecture is considered approved and no new architectural concepts may be introduced without an approved ADR.

### Architecture Specification

A normative architecture artifact that defines part of the system structure, behavior, dependency model, or methodology.

### Architecture Standard

A normative artifact that defines rules for how architecture is documented, maintained, reviewed, or released.

### Artifact

A version-controlled repository file that forms part of the Novel Development System.

### Artifact Family

A group of related artifacts identified by a shared prefix or repository directory.

Examples include `ARCH`, `AG`, `MOD`, `DOC`, and `REP`.

### Authority

The right of a document to define, govern, or constrain other repository artifacts.

### Classification

The metadata field that identifies whether an artifact is normative or informative.

### Compliance

The state in which an artifact satisfies the applicable standards, metadata requirements, formatting requirements, and release requirements.

### Constitution

The highest governing document of the Novel Development System.

### Cross Reference

A declared relationship from one artifact to another artifact.

Cross references help maintain traceability and repository navigation.

### Dependency

A relationship in which one artifact requires another artifact to be interpreted or applied correctly.

### Document Standard

A standard that governs document structure, formatting, metadata, or usage.

### Engineering Doctrine

The governing philosophy and engineering principles used to maintain the Novel Development System.

### Gate

A release checkpoint used to verify that required artifacts and quality conditions have been satisfied before moving forward.

### Gate A

The Sprint 1 foundation gate for Release 1.0.1.

Gate A verifies the existence, metadata, cross references, versioning, and repository readiness of ARCH-000 and AG-001.

### Glossary

A controlled terminology artifact.

### Lifecycle

The current maintenance state of an artifact.

Common lifecycle states include Stable, Active, Draft, Deprecated, and Retired.

### Manufacturing

The production of repository-ready artifacts from approved architecture.

Manufacturing does not introduce new architecture.

### Metadata

Structured information at the beginning of an artifact that identifies the artifact, version, status, ownership, dependencies, cross references, lifecycle, and repository location.

### Module

A reusable unit of the Novel Development System methodology.

### Normative

Authoritative and binding within the repository.

A normative statement defines what SHALL, SHALL NOT, SHOULD, SHOULD NOT, or MAY be done.

### Repository

The version-controlled collection of files that make up the Novel Development System.

### Repository Path

The intended location of an artifact within the repository.

### Release

A packaged version of repository artifacts prepared for use, review, or commit.

### Release Candidate

A packaged release that is ready for review but not yet finally accepted.

### Release Standard

A document that governs how releases are manufactured, verified, and packaged.

### Requirement

A condition that an artifact, system, process, or release must satisfy.

### Revision History

The section of an artifact that records version changes and release notes.

### Scope

The declared boundary of what an artifact governs.

### Specification

A normative document that defines expected structure, behavior, content, or methodology.

### Standard

A normative document that defines rules, conventions, or requirements.

### Status

The approval state of an artifact.

Common statuses include Draft, Review, Approved, Deprecated, and Superseded.

### Superseded

A state in which an artifact has been replaced by another artifact.

### Traceability

The ability to determine where a concept is defined, what depends on it, and how it relates to other repository artifacts.

### Version

The release identifier assigned to an artifact.

---

## 5. Usage Rules

Repository artifacts SHOULD reference AG-001 instead of redefining common architectural terms.

A term SHALL be added to AG-001 when:

- it is used across multiple architecture artifacts
- it has repository-specific meaning
- inconsistent interpretation would create risk
- it affects governance, release, document structure, or methodology

Terms SHOULD NOT be added when they are ordinary English words without repository-specific meaning.

---

## 6. Cross References

This artifact references:

- ARCH-000 — Architecture Engineering Standard
- REP-001 — Repository Release Standard

---

## 7. Revision History

| Version | Date | Status | Notes |
|---|---:|---|---|
| 1.0.1 | 2026-07-01 | Approved | Manufactured as the Release 1.0.1 architecture glossary. |
