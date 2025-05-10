# 📚 Library Management System - TDA Project in C

## ✅ Overview

This project is a **Library Management System** developed in **C**, using the **Code::Blocks IDE**, following the **Abstract Data Type (TDA)** paradigm. It features:

- A **stack (`void*`)** to store recently returned books.
- A **queue (`void*`)** to manage book loan requests.
- Use of **callback functions** throughout the implementation.
- Support for at least **3 custom structures** representing entities like users and books.

The system allows basic management operations such as pushing books into the stack, popping them for re-shelving, enqueueing user requests, and dequeuing to process loans — all while retrieving information from both data structures.

---

## 🧱 Features & Functionalities

### 🔹 Structures Used
You must implement at least 3 custom structures. Example:
- `Book`: Represents a book with attributes like ID, title, author, status, etc.
- `User`: Represents a library user with name, ID, requested book, etc.
- `Date`: Custom date structure or utility if needed.

### 📦 Stack of Returned Books (`void*`)
- Push: Register a returned book.
- Pop: Re-shelve a book (remove from top).
- Peek: View details of the most recently returned book.

### 🧾 Queue of Loan Requests (`void*`)
- Enqueue: Add a new loan request from a user.
- Dequeue: Process the oldest loan request.
- Front: View details of the next user in line.

### 🎯 Callback Functions
All operations use **callback functions** for printing, comparing, or freeing data stored in the stack and queue.

---

## 🛠️ Development Tools

- **Language:** ANSI C (C89/C90)
- **IDE:** Code::Blocks
- **Data Structures:** Stack and Queue implemented using dynamic memory and void pointers
- **Design Paradigm:** Abstract Data Types (TDA)

---

## 🧪 How to Compile & Run

1. Open **Code::Blocks**
2. Create a new console application in C
3. Import all `.c` and `.h` files
4. Build and run the project
5. Use the interactive menu to test all functionalities

---

## 🧭 Interactive Menu Options

The program includes an interactive menu with the following options:

- 📤 **Push Book**: Add a returned book to the stack  
- 📥 **Pop Book**: Remove and re-shelve the top book from the stack  
- 🔍 **Peek Book**: Show details of the most recently returned book  
- 📝 **Enqueue Request**: Add a new user request to the queue  
- 📩 **Dequeue Request**: Process the next user's request  
- 👀 **Front Request**: View details of the next user in the queue  

---

## 📌 Notes

- Memory management is handled dynamically; always ensure proper allocation and deallocation.
- All structures are generic using `void*` to allow flexibility.
- Callbacks are used to print, compare, or free data types dynamically.

---

## 🙌 Credits

Developed by Luciano Moliterno   
📅 Date: 05/09/25

