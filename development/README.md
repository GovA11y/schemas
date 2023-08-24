# Database Schema Management

This document outlines the workflow and environments used for managing the Postgres database schema.

## Environments

```mermaid

```

### Production

-   The live production database with real data.
-   The active database that end-users interact with.

#### DBeaver Settings

**Identifier:** `prod`
**Name:** Production
**Description:** Live production database with real data
**Color:** Red

| Option                                   | Setting |
| ---------------------------------------- | ------- |
| Auto-commit by default                   | False   |
| Confirm SQL execution                    | True    |
| Automatically end long idle transactions | True    |
| Confirm data changes                     | True    |

| Permissions             | Setting |
| ----------------------- | ------- |
| Restrict data edit      | True    |
| Restrict structure edit | True    |
| Restrict script execute | False   |
| Restrict data import    | True    |

### Baseline

-   A snapshot of the current production schema without data.
-   Used as a point of comparison to detect changes.

#### DBeaver Settings

**Identifier:** `baseline`
**Name:** Baseline
**Description:** Snapshot of the current production schema without data
**Color:** Blue

| Option                                   | Setting |
| ---------------------------------------- | ------- |
| Auto-commit by default                   | False   |
| Confirm SQL execution                    | True    |
| Automatically end long idle transactions | True    |
| Confirm data changes                     | True    |

| Permissions             | Setting |
| ----------------------- | ------- |
| Restrict data edit      | True    |
| Restrict structure edit | True    |
| Restrict script execute | False   |
| Restrict data import    | True    |

### Development

-   Where developers apply and initially test changes.
-   Changes are compared to the Baseline to detect modifications.

#### DBeaver Settings

**Identifier:** `dev`
**Name:** Development
**Description:** Development environment for applying and testing changes
**Color:** Green

| Option                                   | Setting |
| ---------------------------------------- | ------- |
| Auto-commit by default                   | False   |
| Confirm SQL execution                    | False   |
| Automatically end long idle transactions | False   |
| Confirm data changes                     | False   |

| Permissions             | Setting |
| ----------------------- | ------- |
| Restrict data edit      | False   |
| Restrict structure edit | False   |
| Restrict script execute | False   |
| Restrict data import    | False   |

### Testing

-   An environment where changes are rigorously tested before promotion to Production.
-   The final testing ground to ensure everything is working as expected.

#### DBeaver Settings

**Identifier:** `test`
**Name:** Testing
**Description:** Pre-production testing environment
**Color:** Yellow

| Option                                   | Setting |
| ---------------------------------------- | ------- |
| Auto-commit by default                   | False   |
| Confirm SQL execution                    | True    |
| Automatically end long idle transactions | True    |
| Confirm data changes                     | True    |

| Permissions             | Setting |
| ----------------------- | ------- |
| Restrict data edit      | False   |
| Restrict structure edit | False   |
| Restrict script execute | False   |
| Restrict data import    | False   |

## Workflow

1. **Develop in Development**: Apply and test changes in the Development environment.
2. **Compare with Baseline**: Compare Development to Baseline to understand changes.
3. **Apply Changes to Testing**: Apply changes to Testing for pre-production verification.
4. **Promote to Production**: Apply tested changes to the Production environment.

### Considerations

-   **Sync Baseline Regularly**: Keep the Baseline in sync with the Production schema.
-   **Automated Testing**: Utilize automated testing in the Testing environment.
-   **Backup and Rollback Strategy**: Plan for backing up the Production database and rolling back changes if needed.
-   **Environment Parity**: Ensure that Development, Testing, and Baseline environments are configured similarly to Production.
-   **Data Considerations**: Account for data-dependent changes or features that might require special handling or testing.
