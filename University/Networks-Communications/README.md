# Networks & Communications 🌐🔌  
[![C](https://img.shields.io/badge/C-Core_Implementation-blue)](https://en.wikipedia.org/wiki/C_(programming_language))  
[![Cisco](https://img.shields.io/badge/Cisco-Packet_Tracer-orange)](https://www.cisco.com/c/en/us/training-events/training-certifications/simulations.html)  
**Network fundamentals, Cisco Packet Tracer labs, and a client-server medication management system.**



---

## 🌟 Core Topics  

### Network Theory & Tools  

1. **Network Fundamentals**  
   - Transmission media, OSI/TCP-IP layers  
   - IP addressing, subnetting, wireless protocols  

2. **Cisco Packet Tracer**  
   - LAN/WAN simulations, routing/switching labs  

3. **Advanced Concepts**  
   - Data link layer protocols, IP header analysis  
   - Book analysis: *"How to Kill the Internet"*  

---

## 💊 Semester Project: Medication Management System  

### Objective  
Develop a client-server application in C/C++ for pharmaceutical laboratories to manage medications (aerosols, creams, capsules) with:  
- Multi-user authentication (1 active connection at a time).  
- Session logging (`server.log` + per-user logs).  
- Data validation (product codes, unique constraints).  

---

### Key Features  

#### Server Requirements  
- **Session Management**  
  - 2-minute inactivity timeout.  
  - 3 failed login attempts → connection termination.  

- **Data Validation**  
  - Unique medication type names.  
  - Product code checksum verification (e.g., `DCR-88578-9`).  

  **Checksum Example**:  
  ```plaintext
  8+8+5+7+8 = 36 → 3+6 = 9 → Valid
  ```
- **Binary Storage**
  - Medications stored in medications.dat.
  - Conversion tool to human-readable format.
    
### Client Requirements

- **Interactive Console**
  - Medication CRUD operations.
  - Activity log retrieval.
    
- **Search Filters**
  - Partial name matching (AMOX* → AMOXOL).
  - Type-based filtering (CREAM, CAPSULE).

---

## 🔑 Key Resources

### Network Diagrams
```
[Client] ←TCP→ [Server] ↔ [medications.dat]
              ↳ [server.log]
              ↳ [user_123.log]
```

### Validation Workflow
   1. Client connects → IP:Port validation.
   2. Authentication → credentials.txt check.
   3. Session timer starts → 120s timeout.
   4. Commands → Server validation → Binary update.

---

## 🛠️ Technical Implementation
   - **Language** : C/C++ (POSIX sockets).
   - **OS** : Linux/Windows compatible.
   - **Dependencies** :
      - <sys/socket.h> for network operations.
      - <time.h> for session timestamping.

---

## 📝 How to Use

### Network Labs
Open /cisco_labs/basic_router.pkt in Packet Tracer.

### Medication System
// Compile server
```
g++ medication_system/server/main.cpp -o med_server
```
// Run server
```
./med_server 5000
```

---

## 📜 Methodology
   - **Layered Architecture** : Separation of network/client-server logic.
   - **Defensive Programming** : Input sanitization + checksum validation.
   - **RFC Compliance** : TCP socket best practices.

---

## ⚠️ Critical Note
Always validate product codes using the checksum algorithm before storage!

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝
