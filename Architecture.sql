Snowflake Architecture
======================
Snowflake is a cloud-based data warehousing platform that separates storage and compute to achieve high performance, scalability, and concurrency. Its architecture is multi-cluster, shared-data, designed specifically for the cloud.

Snowflake architecture has three main layers:
=============================================

           ┌─────────────────────────────┐
           │       Cloud Services         │
           │  - Authentication           │
           │  - Metadata Management      │
           │  - Query Optimization       │
           │  - Transaction Management   │
           └─────────────┬──────────────┘
                         │
             ┌───────────┴───────────┐
             │   Virtual Warehouses  │  ← Compute Layer (Query Execution)
             │  - Multi-cluster       │
             │  - Auto-scaling        │
             │  - Concurrency          │
             └───────────┬───────────┘
                         │
             ┌───────────┴───────────┐
             │   Database Storage     │  ← Storage Layer
             │  - Cloud Storage        │
             │  - Columnar Storage     │
             │  - Micro-partitioning   │
             │  - Time Travel & Fail-safe │
             └─────────────────────────┘
