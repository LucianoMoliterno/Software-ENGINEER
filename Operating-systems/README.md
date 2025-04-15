# Operating Systems 🖥️  
[![ISO](https://img.shields.io/badge/ISO-Process_Planning-blue)](https://en.wikipedia.org/wiki/Operating_system)  
[![Distributed_Systems](https://img.shields.io/badge/Distributed_Systems-Concurrency-green)](https://en.wikipedia.org/wiki/Distributed_operating_system)  
**Repository for learning and applying concepts of operating systems, including process scheduling, concurrency, distributed systems, and practical implementations.**

---

## 📚 Core Topics  

### **ISO: Operating System Fundamentals**  
- **Introduction**: Overview of operating system components and functionalities.  
- **Process Administration**: Process states, creation, and termination.  
- **Entry/Exit Administration**: I/O management and device drivers.  
- **Process Scheduling**: Short-term, long-term, and medium-term scheduling.  
- **Memory Management**: Paging, segmentation, and virtual memory.  
- **File System Administration**: File structures, permissions, and operations.  
- **Security**: Authentication, access control, and threat mitigation.  
- **Partial + Practical Work**: Hands-on exercises and assessments.  

---

## 🔧 Practical Work (ISO)  

### **TP Delivery No 1: Understanding Process Scheduling Algorithms**  
#### Objective:  
Understand how short-range process scheduling works by simulating different algorithms.  

#### Tasks:  
1. Simulate 4 process scheduling algorithms:  
   - Two non-preemptive algorithms (e.g., FCFS, SJF).  
   - Two preemptive algorithms (e.g., Round Robin, Priority Scheduling).  
2. Use 6 processes configured based on student IDs.  
3. Compare results and analyze advantages/disadvantages of each algorithm.  

#### Deliverables:  
1. **Process Configuration**: Define the processes used in simulations.  
2. **Results Obtained**: Present outcomes for each simulation.  
3. **Comparison and Analysis**: Analyze the performance of each algorithm.  

---

### **TP Delivery No 2: New Scheduler Proposal**  
#### Objective:  
Propose a new type of process scheduler with unique characteristics.  

#### Tasks:  
1. Describe the proposed scheduler and its potential benefits.  
2. Provide pseudo-code for the scheduler’s operation.  
3. Apply the scheduler to the process configuration from TP Delivery No 1.  
4. Analyze and compare results with previous simulations.  

#### Deliverables:  
1. **Description**: Explain the new scheduler.  
2. **Pseudo-code**: Provide implementation details.  
3. **Results Obtained**: Show outcomes of the new scheduler.  
4. **Analysis**: Evaluate the results.  
5. **Comparison**: Compare with previous simulations.  

---

## 🌐 Distributed Operating Systems (SOD)  

### **Core Topics**  
- **Concurrency between Processes**: Handling simultaneous execution.  
- **Interlock between Processes**: Synchronization mechanisms (e.g., semaphores, mutexes).  
- **Distributed Operating Systems**: Architecture and principles.  
- **Process Migration in SOD**: Load balancing and fault tolerance.  
- **Synchronization and Interlock in SOD**: Coordination across nodes.  
- **SOD Resources**: Resource allocation and management.  
- **Trx Security and SOD Failures**: Ensuring reliability and security.  
- **Special Operating Systems**: Real-time, embedded, and cloud-based systems.  
- **Coexistence of Operating Systems**: Multi-OS environments.  
- **Partial + Practical Work**: Hands-on exercises and assessments.  

---

## 🔧 Practical Work (SOD)  

### **TP Delivery No 1: Installation of the Distributed Environment**  
#### Objective:  
Install and configure the "Rocks" operating system on at least 3 virtual machines (1 master node, 2 slave nodes).  

#### Tasks:  
1. Install Rocks OS on virtual machines.  
2. Configure the distributed environment.  
3. Document challenges faced and their solutions.  

#### Deliverables:  
1. **Installation Steps**: Detailed instructions for setup.  
2. **Environment Configuration**: Description of the distributed system.  
3. **Problems and Solutions**: Challenges encountered during installation.  

---

### **TP Delivery No 2: Distributed Environment Stress Testing**  
#### Objective:  
Test the distributed system’s performance, load balancing, and fault tolerance.  

#### Tasks:  
1. Perform at least 4 tests:  
   - Performance testing.  
   - Load balancing evaluation.  
   - Node outage scenarios.  
2. Document results and analyze findings.  

#### Deliverables:  
1. **Environment Configuration**: Describe the setup used for testing.  
2. **Test Details**: For each test:  
   - Objective.  
   - Description.  
   - Screenshots.  
   - Results obtained.  
3. **Analysis**: Evaluate the outcomes of each test.  
4. **Conclusions**: Summarize insights and learnings.  

---

## 🛠️ How to Use  

### **Study the Theory**  
1. Open `/theory/process_scheduling.md` for scheduling algorithms.  
2. Review `/theory/distributed_systems.md` for SOD concepts.  

### **Practice with Examples**  
1. Simulate scheduling algorithms in `/exercises/scheduling_simulations`.  
2. Test distributed systems using `/tools/rocks_os_setup_guide`.  

### **Submit Deliverables**  
- Follow the structure provided in `/templates/deliverable_report_template.md` for reports.  

---

## 📜 Methodology  

- **Step-by-Step Learning**: Start with basic OS concepts and progress to advanced topics like distributed systems.  
- **Hands-On Practice**: Real-world simulations and distributed environment setups.  
- **Collaborative Work**: Group tasks to encourage teamwork and problem-solving.  

---

## ⚠️ Critical Note  
Always validate configurations and test results to ensure accuracy and reliability!

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝
