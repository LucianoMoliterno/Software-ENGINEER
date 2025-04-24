# 📚 Topics Covered  
[![C](https://img.shields.io/badge/C-Core_Implementation-blue)](https://en.wikipedia.org/wiki/C_(programming_language))
[![Python](https://img.shields.io/badge/Python-Prototyping_and_Visualization-green)](https://www.python.org/)

This repository serves as a comprehensive guide to fundamental concepts in computer programming, including:  

- **Data Structures**:  
  - Basic structures: Characters, arrays (vectors), matrices.  
  - Advanced structures: Queues, linked lists, stacks, and trees.  
- **Memory Management**:  
  - Pointers: Understanding memory addresses and dereferencing.  
  - Dynamic memory allocation: `malloc`, `calloc`, `realloc`, and `free`.  
- **Algorithms**:  
  - Sorting algorithms: Bubble sort, quicksort, merge sort.  
  - Function and procedure design for reusability.  
  - Abstract Data Types (ADTs): Stacks, queues, and hash tables.  
- **Modular Programming**:  
  - Code organization: Header files, modules, and reusable components.  
  - File handling: Reading/writing files and serialization.  
  - Scalable system design for maintainability.  

---

## 🍫 Annual Project: Chocolate E-Commerce Cost Analysis  

### 📋 Objective  
Design and implement a logistics optimization system for a chocolate distributor to minimize shipping costs while adhering to the following constraints:  
- **Package Weight**: Between 500g and 2kg.  
- **Distance**: Ranges from 400km to 600km.  
- **Delivery Time**: Must not exceed 48 hours.  

The system will calculate optimal shipping costs across multiple carriers, ensuring efficiency and cost-effectiveness.  

---

### 🔍 Methodology  

#### 1. **Data Collection**  
- Research tariffs from at least 3 carriers (e.g., Argentinian Post, Andreani, OCA).  
- Gather data on base fees, per-kilometer rates, and per-kilogram rates.  
- Document carrier-specific constraints (e.g., maximum weight, delivery zones).  

#### 2. **Mathematical Modeling**  
- Develop a linear cost function:  
  ```plaintext
  Cost = Base Fee + (Distance × km Rate) + (Weight × kg Rate)
- Create comparative tables to analyze costs across carriers.  
- Use visualization tools like GeoGebra or Python's Matplotlib to plot cost trends based on weight and distance.  

### 3. Software Implementation  
#### Interactive Menu System:  
- User-friendly interface for inputting package details (weight, destination, urgency).  
- Display optimal carrier options with cost breakdowns.  

#### Cost Calculation Engine:  
- Implement the cost function in code (e.g., C, Python).  
- Ensure modularity for easy updates to carrier data.  

#### Scalable Architecture:  
- Design the system to handle future product lines and additional carriers.  
- Use file I/O or databases to store carrier tariffs and user preferences.  

---

### 📊 Expected Deliverables  

#### Documentation:  
- Detailed explanation of the mathematical model and assumptions.  
- Flowcharts and pseudocode for the software implementation.  

#### Code:  
- Modular and well-commented source code.  
- Example inputs and outputs for validation.  

#### Visualization:  
- Graphs and charts showing cost comparisons across carriers.  
- Interactive plots for user exploration (optional).  

---

### 🛠️ Tools and Technologies  

#### Programming Languages:  
- Primary: C (for low-level control and memory management).  
- Optional: Python (for rapid prototyping and visualization).  

#### Visualization Tools:  
- GeoGebra for static graphs.  
- Matplotlib/Seaborn (Python libraries) for dynamic visualizations.  

---

- ## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝
