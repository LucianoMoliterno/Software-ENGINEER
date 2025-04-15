# Computer Architecture (Assembler Programming) 🖥️  
[![MPLAB](https://img.shields.io/badge/MPLAB-IDE-blue)](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)  
[![Proteus](https://img.shields.io/badge/Proteus-Simulation-green)](https://www.labcenter.com/)  
**Repository for learning and applying assembler programming concepts using PIC microcontrollers, MPLAB, and Proteus.**

---

## 📚 Core Topics  

### **1. Tools & Environment**  
- **MPLAB**: Development environment for PIC microcontrollers.  
- **Proteus**: Circuit simulation and testing.  
- **Datasheet Study**: PIC16F84A - Timer 0 configuration and usage.  

---

## 🔧 Exercises  

### **Exercise 1: LED Control with PIC16F628A**  
Circuit: LEDs connected to RB0, RB1, RB2, and RB3 terminals.  

#### Tasks:  
- **[a]** Turn on all LEDs.  
- **[b]** Toggle all LEDs every 1 second.  
- **[c]** LEDs on for 1 second, off for 500ms.  
- **[d]** Turn on LEDs from RB0 to RB3 with a 500ms delay between each.  
- **[e]** Same as [d], but turn off LEDs from RB3 to RB0 after all are on, repeating indefinitely.  

---

### **Exercise 2: Button and LED Interaction**  
Circuit: Button on RB0, LEDs on RB1 and RB2.  

#### Tasks:  
- **[a]** Turn on both LEDs when the button is pressed.  
- **[b]** Toggle LEDs on/off with button presses.  
- **[c]** Sequence: Turn on RB1 → RB2 → Turn off RB1 → Turn off RB2.  
- **[d]** Same as [c], but with RB0 interrupt handling.  

---

### **Exercise 3: Button and Display Interaction**  
Circuit: Button on RB0, display connected to RB1-RB7.  

#### Tasks:  
- **[a]** Count from 0 to 15 in hexadecimal on button press. Reset after 15.  
- **[b]** Same as [a], but count down to 0 after reaching 15. Repeat indefinitely.  
- **[c]** Automatic counting with a 1-second delay between numbers. Use Timer 0 and RB0 interrupt. Pause/resume with the button.  

---

## 🏗️ Projects  

### **Project 1: Elevator Simulation**  
Simulate an elevator system using PIC assembly programming.  

### **Project 2: LED Board Operations**  

#### **A. Addition of Two 3-Digit Hexadecimal Numbers**  
Sequence:  
1. Write the first number using G1 (increment) and G2 (decrement).  
2. Press M to enter the second number.  
3. Write the second number using G1 and G2.  
4. Press M to display the result.  
5. Press R to restart.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

#### **B. Subtraction of Two 3-Digit Hexadecimal Numbers**  
Sequence:  
1. Write the first number using G1 (increment) and G2 (decrement).  
2. Press M to enter the second number.  
3. Write the second number using G1 and G2.  
4. Press M to display the result (N1 - N2).  
   - If negative, turn on the G segment of the display next to the last digit.  
5. Press R to restart.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

#### **C. Multiplication of Two 2-Digit Hexadecimal Numbers**  
Sequence:  
1. Write both numbers using G1 (first number) and G2 (second number).  
   - Press R to reset both numbers.  
2. Press M to display the multiplication result.  
   - Press R to return to step 1 without clearing numbers.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

#### **D. Addition of Two 3-Digit Decimal Numbers**  
Sequence:  
1. Write the first number using G1 (increment) and G2 (decrement).  
2. Press M to enter the second number.  
3. Write the second number using G1 and G2.  
4. Press M to display the result.  
5. Press R to restart.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

#### **E. Subtraction of Two 3-Digit Decimal Numbers**  
Sequence:  
1. Write the first number using G1 (increment) and G2 (decrement).  
2. Press M to enter the second number.  
3. Write the second number using G1 and G2.  
4. Press M to display the result (N1 - N2).  
   - If negative, turn on the G segment of the display next to the last digit.  
5. Press R to restart.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

#### **F. Multiplication of Two 2-Digit Decimal Numbers**  
Sequence:  
1. Write both numbers using G1 (first number) and G2 (second number).  
   - Press R to reset both numbers.  
2. Press M to display the multiplication result.  
   - Press R to return to step 1 without clearing numbers.  
- **Power Recovery**: Resume from the last step if power is interrupted.  

---

## 🛠️ How to Use  

### **Development Environment**  
1. Install MPLAB IDE for assembly programming.  
2. Use Proteus for circuit simulation and testing.  
3. Refer to the PIC16F84A datasheet for Timer 0 configuration.  

### **Testing Programs**  
- Simulate circuits in Proteus before deploying to hardware.  
- Debug using MPLAB's built-in tools.  

---

## 📜 Methodology  

- **Step-by-Step Approach**: Break down each exercise into smaller tasks.  
- **Modular Design**: Separate logic for input handling, calculations, and output display.  
- **Error Handling**: Ensure robustness by handling edge cases (e.g., overflow, invalid inputs).  

---

## ⚠️ Critical Note  
Always validate Timer 0 configurations and interrupt handling to ensure precise timing and responsiveness!

---

## 📜 License

This repository is licensed under the [MIT License](LICENSE). Feel free to use, modify, and distribute the contents of this repository as long as you adhere to the terms of the license. 📝
