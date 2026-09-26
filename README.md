# 🔐 Security Lock System — 8086 Assembly! hey

A password-based security lock system developed as a **CAALP (Assembly Language Programming) Project Based Learning (PBL)** project using **8086 Assembly Language**.

The project demonstrates low-level programming concepts including registers, memory, loops, conditional branching, keyboard input, and DOS interrupt services.

## 📌 Project Overview

The system simulates a basic access-control mechanism:

1. Prompts the user to enter a password.
2. Accepts the password character-by-character.
3. Displays `*` instead of the entered characters.
4. Compares the entered password with the predefined password.
5. Displays **ACCESS GRANTED!** when the password matches.
6. Displays **ACCESS DENIED!** for an incorrect password.
7. Allows a maximum of **3 attempts**.
8. Displays **TOO MANY ATTEMPTS!** when the attempts are exhausted.

## 🛠️ Technologies

- **8086 Assembly Language**
- **MASM (Microsoft Macro Assembler)**
- **TLINK**
- **DOS / DOSBox**
- **EMU8086** (optional)

## 📁 Repository Structure

```text
security-lock-system-8086/
│
├── README.md
├── src/
│   └── security_lock.asm
│
├── docs/
│   └── CAALP_PBL_Report.docx
│
└── .gitignore
```

## ⚙️ Core Concepts Demonstrated

- Register manipulation
- Memory addressing
- Keyboard input
- DOS interrupt `INT 21H`
- Loops using `LOOP`
- Conditional branching
- Character comparison
- Attempt-counter logic
- Basic password masking
- Low-level input/output operations

## 🔑 Authentication Logic

The project stores a predefined password in memory and compares the entered characters one by one.

```text
          ┌─────────────────┐
          │ Start Program   │
          └────────┬────────┘
                   │
                   ▼
          ┌─────────────────┐
          │ Enter Password  │
          └────────┬────────┘
                   │
                   ▼
          ┌─────────────────┐
          │ Compare Input   │
          │ with Password   │
          └──────┬─────┬────┘
                 │     │
              Match   Wrong
                 │     │
                 ▼     ▼
        ┌────────────┐ ┌──────────────┐
        │   Access   │ │ Decrease     │
        │   Granted  │ │ Attempts     │
        └────────────┘ └──────┬───────┘
                              │
                              ▼
                       Attempts = 0?
                         │       │
                        Yes      No
                         │       │
                         ▼       └──► Try Again
                ┌─────────────────┐
                │ Too Many        │
                │ Attempts        │
                └─────────────────┘
```

## 💻 Source Code

The main Assembly source is available in [`src/security_lock.asm`](src/security_lock.asm).

The predefined password used by the current implementation is:

```text
1234
```

> This is an academic demonstration project; the password is intentionally stored directly in the source code.

## ▶️ Running the Project

The project is intended for an 8086/DOS-oriented environment such as MASM with DOSBox or an 8086 emulator such as EMU8086.

A typical workflow is:

```text
Assemble → Link → Run
```

The exact commands depend on the assembler/linker environment being used.

## 📄 Project Report

The original CAALP PBL report is included in [`docs/CAALP_PBL_Report.docx`](docs/CAALP_PBL_Report.docx).

## 🚀 Future Enhancements

The project report identifies several possible extensions:

- Multiple authentication attempts with improved handling
- Alarm system integration
- Biometric verification
- Microcontroller integration
- More robust security mechanisms

## 👥 Project Team

- **M. Tejaswini**
- **N. Shreya**
- **Tanvi Patil**
- **V. Vaishnavi**

## 🎓 Academic Project

**Project:** Security Lock System  
**Course:** Assembly Language Programming (CAALP)  
**Academic Year:** 2025–2026  
**Institution:** Geethanjali College of Engineering and Technology  
**Department:** Computer Science and Engineering (AI & ML)

---

*Academic project developed to demonstrate low-level programming and security/access-control concepts using 8086 Assembly Language.*
