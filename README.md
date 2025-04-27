# Universe Database Project

This repository contains the **Universe Database**, a structured relational database designed to store and manage information about celestial objects, cosmic events, and other astronomical data. This project focuses on creating and managing a comprehensive database using SQL.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Database Schema](#database-schema)
- [Setup Instructions](#setup-instructions)
- [Repository Structure](#repository-structure)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

---

## Project Overview

The **Universe Database** project is an initiative to build a relational database that models astronomical data. This database can be used for research, analysis, and exploration of celestial data.

The project includes:

- A complete SQL schema for the database.
- Table definitions for storing data about planets, stars, galaxies, and cosmic events.
- Relationships between astronomical entities.
- Queries for retrieving and managing data.

---

## Features

- **Structured Data Storage**: Tables to store information about stars, planets, galaxies, cosmic events, and more.
- **Relational Design**: Connections between entities like stars in a galaxy or planets orbiting stars.
- **Scalability**: Can be expanded with additional tables and relationships as needed.
- **Query Support**: Includes example SQL queries for managing and retrieving data.

---

## Database Schema

The schema defines the following entities:

1. **Stars**:
   - Attributes: Name, Type, Mass, Luminosity, etc.
2. **Planets**:
   - Attributes: Name, Orbit Radius, Host Star, etc.
3. **Galaxies**:
   - Attributes: Name, Type, Number of Stars, etc.
4. **Cosmic Events**:
   - Attributes: Event Type, Location, Date, etc.

Find the complete schema in the `universe.sql` file in this repository.

---

## Setup Instructions

### Prerequisites

- Install MySQL or any SQL-compatible database engine.
- A SQL client or command-line tool to execute the script.

### Steps

1. Clone this repository:
   ```bash
   git clone https://github.com/AbdoElboshy/Universe_DataBase.git
   ```
2. Navigate to the repository directory.

3. Import the `universe.sql` file into your database:
   ```bash
   mysql -u <username> -p <database_name> < universe.sql
   ```

4. Verify that the tables are created successfully:
   ```sql
   SHOW TABLES;
   ```

5. (Optional) Populate the tables with sample data or use queries for analysis.

---

## Repository Structure

```
.
├── universe.sql        # SQL script for creating the database schema
├── README.md           # Project documentation
```

---

## Usage

- Load the `universe.sql` file to create the database schema.
- Use SQL queries to:
  - Retrieve data about celestial objects (e.g., stars, planets).
  - Analyze relationships between entities.
  - Manage and update astronomical data.

### Example Query

```sql
-- Retrieve all planets orbiting a specific star
SELECT * FROM Planets WHERE HostStar = 'Sun';
```

---

## Contributing

Contributions are welcome! If you have ideas for improving the database or adding new features, please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to your branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

---

## License

This project is provided for educational and research purposes and does not include a specific license.

---
