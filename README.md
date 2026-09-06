# Race Day- Part 1 (POE)

## Project Overview
Race Day is a comprehensive event management system designed to streamline race event planning and participant registration. This repository contains **Part 1: System Planning and Database**, which establishes the architectural blueprint, database schema, and API specifications prior to application implementation.

The system caters to two primary user roles:
* **Organiser**: Responsible for creating and managing events, defining event categories, capturing race results.
* **Participant**: Enables users to register accounts, explore upcoming events, enter specific categories, track venues, and view race results.

---

## Submission Deliverables

| Deliverable | File Path | Description |
| :--- | :--- | :--- |
| **Entity Relationship Diagram (ERD)** | `/docs/ERD.png` | Complete 6-entity data model with primary/foreign keys and cardinality. |
| **API Endpoint Plan** | `/docs/API_Plan.md` | Comprehensive endpoint mapping table covering all operational routes and roles. |
| **SQL Database Script** | `/docs/schema.sql` | SSMS-compatible SQL script with table definitions, constraints, and seed data. |

---

## Repository Structure

```text
├── .github/
│   └── workflows/
│       └── verify-docs.yml    # GitHub Actions workflow for repository structure verification
├── docs/
│   ├── ERD.png                # Entity Relationship Diagram
│   ├── API_Plan.md            # RESTful API Endpoint Specifications
│   └── schema.sql             # SQL Server database creation and seed script
└── README.md                  # Project overview and submission details
