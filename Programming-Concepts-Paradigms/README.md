# Programming Concepts & Paradigms 🧠💻  
[![Prolog](https://img.shields.io/badge/Prolog-Expert_System-orange)](https://www.swi-prolog.org/)  
**Study of programming language theory, logic paradigms, and a Prolog-based factory management system.**  

---

## 📚 Core Concepts  
| Paradigm           | Key Topics                          |  
|--------------------|-------------------------------------|  
| **Imperative**     | Syntax/semantics, operational rules |  
| **OOP**            | Encapsulation, type systems         |  
| **Functional**     | Lambda calculus, bindings           |  
| **Logic**          | Horn clauses, unification           |  

---

## 🏭 Semester Project: Factory Production System  

### Knowledge Base Requirements  
```prolog  
% Product Structure Example  
product(1, 'Wooden Chair', 150.50, [  
    component(wood, 5),  
    component(nails, 20),  
    component(varnish, 2)  
]).  

% Sales Tracking  
sale(2024-05-20, client(5, 'John Doe'), 1, 3). % Sold 3 chairs
```
---

## 📜 Academic Resources
  - Solved Exams: 2023-2024 logic programming challenges
  - Documentation: Commented Horn clauses for all rules

---

## 🛠️ Tools & Validation
Development: SWI-Prolog + VSCode

Testing:

```prolog
Copy
?- test_stock_validation. % Unit test example  
true.  
```
-  **Edge Cases**:
    - Zero-stock sales prevention
    - Temporal sales consistency (date ranges)
