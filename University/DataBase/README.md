# Knowledge Base 📚

[![MySQL](https://img.shields.io/badge/MySQL-Database-blue)](https://www.mysql.com/)  
[![MongoDB](https://img.shields.io/badge/MongoDB-NoSQL-green)](https://www.mongodb.com/)  
[![Java](https://img.shields.io/badge/Java-Programming-yellow)](https://www.java.com/)  

---

## 📂 Repository Overview  

This repository contains resources and practical exercises for learning and mastering database concepts, including relational databases (MySQL) and NoSQL databases (MongoDB). It also includes hands-on projects to apply theoretical knowledge in real-world scenarios.  

---

## 🔍 Topics Covered  

### **Introduction to Databases**  
- Entity-Relationship Model (ERD)  
- Normalization Forms  
- Fundamentals of Relational Databases  
- Practical Exercises + Partial + Final Projects  

---

### **Database 1: Relational Databases (MySQL)**  
[![MySQL](https://img.shields.io/badge/MySQL-Database-blue)](https://www.mysql.com/)  

- Stored Procedures  
- Triggers  
- Indexing Strategies  
- MySQL Functions and Procedures  
- Cursors  
- Procedures with Output Parameters  
- Industrial Use Cases  

---

### **Database 2: NoSQL Databases (MongoDB)**  
[![MongoDB](https://img.shields.io/badge/MongoDB-NoSQL-green)](https://www.mongodb.com/)  

- Introduction to NoSQL Databases  
- MongoDB Environment Setup  
- JSON Format and Data Serialization  
- Data Warehousing Concepts  
- Introductory Exercises + Partial Projects  

---

## 🛠️ Practical Work  

### **Part 1: Introduction to Databases**  

#### **Task Requirements**  
1. Generate the SQL script to create the schema solved in Activity 04 (Charter flight company).  
2. Generate the SQL script to insert data from "Activity 10 Data.xlsx".  
3. Write SQL queries to address the following requirements:  

   **A.** List of company passengers (last name, first name, ID).  
   **B.** List of company passengers (last name, first name, ID, address).  
   **C.** Passengers participating in the frequent flyer program, ordered by last name and first name.  
   **D.** List of company aircraft (make, model, registration, date of entry into service, country of origin).  
   **E.** Aircraft whose country of origin is "Germany".  
   **F.** Flights performed, showing aircraft details, origin/destination airports, departure/arrival times, and pilot CUIL.  
   **G.** Flights departing from "BUE" airport, ordered by departure time.  
   **H.** Flights departing from "BUE" and arriving at "MDQ".  
   **I.** All flights and their passengers (code, surname, name, ID).  
   **J.** Number of flights from "BUE" to "BRC".  
   **K.** Number of flights departing from "MDQ".  
   **L.** Number of flights per origin airport (IATA Code, quantity).  
   **M.** Number of passengers transported, grouped by location.  
   **N.** Number of passengers transported, grouped by day.  
   **O.** Number of flights per passenger (last name, first name, ID, amount).  

---

### **Part 2: Database 1 (Relational DB - MySQL)**  

#### **Scenario: Automotive Terminal Company**  
The company assembles automobiles using parts from various suppliers. Each assembly line produces one vehicle model, and production is tracked through workstations.  

##### **Tasks**  
1. **Model Design**:  
   - Create an ERD for the described scenario.  
   - Write an SQL script to create the database in MySQL.  

2. **ABMs Construction**:  
   Implement CRUD operations for the following entities:  
   - Dealers  
   - Orders (Header + Detail)  
   - Suppliers  
   - Inputs  

   **Requirements**:  
   - Return results in a standardized format:  
     - `nResult`: Integer (0 = success, < 0 = error).  
     - `cMessage`: String (empty for success, error message otherwise).  

3. **Business Procedures**:  
   - Procedure to generate cars with random license plates.  
   - Procedure to start vehicle assembly at the first station.  
   - Procedure to move vehicles between stations and complete tasks.  
   - Handle edge cases (e.g., occupied stations) and return appropriate messages.  

4. **Reporting Procedures**:  
   - List vehicles by order number, indicating chassis and status.  
   - List supplies required for an order.  
   - Calculate average construction time for finished vehicles.  

5. **Optimization**:  
   - Build indexes to optimize query performance.  

---

### **Part 3: Database 2 (NoSQL - MongoDB)**  

#### **Scenario: Pharmacy Chain**  
The pharmacy sells medicines and perfumery products, serving both private and social-work clients.  

##### **Tasks**  
1. **Analysis and Design**:  
   - Create an ERD for the relational approach.  
   - Design Java POJOs to represent the relationships.  

2. **Serialization**:  
   - Serialize POJOs into JSON documents using GSON or Jackson.  
   - Load JSON documents into MongoDB.  

3. **Queries**:  
   Implement the following queries in MongoDB:  
   - Sales totals for the chain and by branch, between dates.  
   - Sales totals by social work or private clients.  
   - Payment method breakdown and totals.  
   - Product sales ranking by amount and quantity sold.  
   - Customer rankings by purchase amount and quantity.  

4. **Data Loading**:  
   - Load test data into MongoDB using a Java process.  
   - Include at least:  
     - 3 branches  
     - 10 clients  
     - 10 products (7 medicines, 3 perfumery)  
     - 30 sales per branch (average 1.5 products per sale).  

---

## 📦 Deliverables  

### **Delivery 1**  
- Problem analysis.  
- ERD diagram (relational approach).  

### **Delivery 2**  
- Java POJOs implementation.  
- Test data instantiation and serialization into a JSON document.  

### **Delivery 3**  
- Load sales data into MongoDB using Java.  
- Implement queries 1 and 4 from the list.  

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝
