# Object Orientation 🖥️  
[![Java](https://img.shields.io/badge/Java-OOP-blue)](https://www.java.com/)  
[![Hibernate](https://img.shields.io/badge/Hibernate-ORM-green)](https://hibernate.org/)  
[![Spring](https://img.shields.io/badge/Spring-Framework-yellow)](https://spring.io/)  
**Repository for learning and applying Object-Oriented Programming (OOP) concepts, tools, and frameworks.**

---

## 📚 Core Topics  

### **OOP 1: Foundations of Object-Oriented Programming**  
- **Introduction to the Paradigm**:  
  - Principles: Encapsulation, Inheritance, Polymorphism, Abstraction.  
  - Class and Object Design.  

- **Lists**:  
  - Array-based and dynamic lists.  
  - Iteration and manipulation techniques.  

- **Static Methods and Exceptions**:  
  - Static methods for utility operations.  
  - Exception handling: Try-catch blocks, custom exceptions.  

- **Polymorphism**:  
  - Method overriding and overloading.  
  - Abstract classes and interfaces.  

- **Assessments**:  
  - Partials + Final projects to reinforce learning.  

---

### **OOP 2: Advanced OOP with Hibernate and Spring Tools**  

#### **Hibernate Framework**  
- **Connection Diagram**:  
  - Visual representation of project files ↔ Database interactions.  

- **Configuration Files**:  
  - `hibernate.cfg.xml`: Database connection settings.  
  - `HibernateUtil.java`: Session configuration class.  

- **Testing and Implementation**:  
  - `TestHBM.java`: Class for testing database connections.  
  - `Data`: Data class for entity modeling.  
  - `Mapping`: Mapping file for ORM (Object-Relational Mapping).  

- **Data Access Layer**:  
  - `ClassDao.java`: Data access class for CRUD operations.  

- **Business Logic Layer**:  
  - `ClassABM.java`: Business logic implementation.  
  - `Test General`: Testing class for business logic validation.  

#### **Cardinality and Relationships**  
- One-to-One, One-to-Many, Many-to-One, Many-to-Many.  
- Inheritance strategies: Single Table, Joined Table, Table Per Class.  

#### **HQL (Hibernate Query Language)**  
- Writing queries for data retrieval and manipulation.  

#### **Spring Tools Integration**  
- Dependency Injection and IoC (Inversion of Control).  
- Spring Boot for rapid application development.  

---

## 🛠️ How to Use  

### **OOP 1**  
1. Study the fundamentals of OOP in `/theory/oop_basics.md`.  
2. Practice with examples in `/examples/oop_fundamentals`.  
3. Complete partials and final assessments.  

### **OOP 2**  
1. Set up Hibernate:  
   - Configure `hibernate.cfg.xml` for your database.  
   - Test the connection using `TestHBM.java`.  

2. Build the Data Layer:  
   - Define entities in `Data`.  
   - Map relationships in `Mapping`.  

3. Implement Business Logic:  
   - Use `ClassDao.java` for data access.  
   - Implement business rules in `ClassABM.java`.  

4. Test Your Application:  
   - Validate functionality with `Test General`.  

5. Explore HQL Queries:  
   - Write and execute queries in `/queries/hql_examples`.  

6. Integrate Spring Tools:  
   - Use Spring Boot for dependency management and modular design.  

---

## 📜 Methodology  

- **Layered Architecture**: Separation of concerns (Data Access, Business Logic, Presentation).  
- **Defensive Programming**: Input validation and exception handling.  
- **ORM Best Practices**: Efficient use of Hibernate for database interactions.  

---

## ⚠️ Critical Note  
Always validate database configurations (`hibernate.cfg.xml`) before deployment to avoid runtime errors!

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝

