# BookMyShow Theatre Show Listing – Database Design

## 🎯 Problem Statement
Design a normalized database schema for a movie ticketing platform where users can view shows for the next 7 days at a given theatre along with show timings.

---

## 🧱 Entities Identified

Core entities in the system:

1. Theatre
2. Screen
3. Movie
4. Show
5. Language
6. Format (2D/3D/IMAX)

---

## 📦 Table Design

### Theatre
Stores theatre details.

**Attributes**
- theatre_id (PK)
- theatre_name
- city

---

### Screen
Each theatre can have multiple screens.

**Attributes**
- screen_id (PK)
- theatre_id (FK)
- screen_name

---

### Language
Lookup table for movie language.

**Attributes**
- language_id (PK)
- language_name

---

### Format
Lookup table for movie format.

**Attributes**
- format_id (PK)
- format_name

---

### Movie
Stores movie metadata.

**Attributes**
- movie_id (PK)
- movie_name
- duration_minutes

---

### Show
Represents a particular show at a time.

**Attributes**
- show_id (PK)
- movie_id (FK)
- screen_id (FK)
- language_id (FK)
- format_id (FK)
- show_date
- show_time

---

## ✅ Normalization Justification

### 1NF
- All attributes are atomic
- No repeating groups

### 2NF
- All tables use single-column primary keys
- No partial dependency exists

### 3NF
- No transitive dependencies
- Language and format separated into lookup tables

### BCNF
- Every determinant is a candidate key

---

## 🚀 How to Run

Execute in order:

1. Run `schema.sql`
2. Run `sample_data.sql`
3. Run `query.sql`

Compatible with **MySQL 8+**

---

## 🔍 P2 — Query Requirement

List all shows on a given date at a given theatre along with their respective show timings.

---

## 📊 Example Output

| theatre_name | movie_name | language | format | show_date | show_time |
|-------------|-----------|----------|--------|----------|-----------|
| PVR Nexus | Dasara | Telugu | 2D | 2026-05-26 | 12:15 |

---

## 🛠 Tech Stack

- MySQL 8+
- Normalized up to BCNF