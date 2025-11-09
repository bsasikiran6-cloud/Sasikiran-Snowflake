Snowflake Architecture

Snowflake is a cloud-based data warehousing platform that separates storage and compute to achieve high performance, scalability, and concurrency. Its architecture is multi-cluster, shared-data, designed specifically for the cloud.

Snowflake architecture has three main layers:

1️⃣ Cloud Services Layer

This is the top layer of Snowflake architecture. It handles all the services needed to manage your data and compute resources.

Key components:

Authentication and Security

Manages login, user identity, and access control.

Supports multi-factor authentication and role-based access control (RBAC).

Metadata Management

Keeps track of all database objects, schemas, tables, and transactions.

Stores metadata separately from the actual data for faster query planning.

Query Parsing and Optimization

Parses SQL queries.

Generates optimized query execution plans.

Ensures queries run efficiently without affecting other users.

Infrastructure Management

Automatically scales clusters up or down.

Manages failover, recovery, and resource allocation.

Transaction Management

Handles ACID compliance (Atomicity, Consistency, Isolation, Durability).

Supports concurrent transactions across multiple clusters.

2️⃣ Virtual Warehouses (Compute Layer)

This is the compute layer where queries are executed.

Key points:

Virtual Warehouse

A virtual cluster of compute resources (CPU, memory) that executes queries.

Each warehouse is independent and does not affect other warehouses.

Can scale up (more powerful machines) or scale out (more clusters).

Multi-Cluster Warehouses

Used to support high concurrency.

Automatically spins up additional clusters if many users are running queries simultaneously.

Features

Can suspend when idle to save costs.

Multiple warehouses can access the same data simultaneously without conflicts.

3️⃣ Database Storage Layer

This is the bottom layer where Snowflake stores all your data.

Key points:

Cloud Storage

Snowflake uses cloud object storage (AWS S3, Azure Blob, Google Cloud Storage).

Data is stored in compressed, columnar format.

Separation of Storage and Compute

Storage is centralized.

Compute (virtual warehouses) is independent, allowing multiple queries without contention.

Data Management

Automatic clustering and micro-partitioning for performance.

Provides time travel (query historical data) and fail-safe (data recovery).