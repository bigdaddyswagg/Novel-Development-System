# 08. Local Assembly Standard

## Purpose

The Local Assembly Standard defines the approved process for constructing a Gold Master document from individually manufactured source artifacts.

Assembly is performed locally after all source artifacts have been downloaded, verified, and stored in the canonical repository.

## Source Layout

Each module shall maintain a dedicated source directory containing only the manufactured section artifacts.

Example:

```text
MOD/
└── MOD-101/
    00-Metadata.md
    01-Purpose.md
    ...
    17.1-Version-History.md
```

The assembled Gold Master shall be generated outside the source directory.

## Assembly Rules

- Assemble only from verified local source artifacts.
- Preserve artifact ordering.
- Do not manually edit the assembled Gold Master.
- If changes are required, modify the source artifacts and rebuild.
- The assembled document is a build output, not the authoritative source.

## Verification

Before release:

- Confirm all expected source artifacts exist.
- Run the approved assembly tool.
- Review the assembled document.
- Resolve any discrepancies by correcting the source artifacts and rebuilding.

## Principle

The authoritative source of a module is its collection of manufactured artifacts.

The Gold Master is a reproducible product of those artifacts.
