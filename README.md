# 🚂 Online Reservation System — OIBSIP Internship Task

A complete **Online Reservation System** built in **Java Swing (AWT/Swing GUI)** as part of the OIBSIP (Oasis Infobyte Software Internship Program) internship task.

---

## 📋 Project Description

This Online Reservation System includes all the necessary fields required during an online train reservation process. It is designed to be easy to use by any person. The data is stored in a central (in-memory) database that can be accessed by any authorized person to get information, saving time and reducing the burden faced by customers.

---

## 🧩 Modules

### 1. 🔐 Login Form
- Users must provide a valid **username and password** to access the system
- Invalid credentials show an error with a shake animation
- Pre-loaded demo users available

### 2. 🎫 Reservation System
- Fill in passenger details: **name, train number, train name (auto-fill), class type, date of journey, from station, to station**
- Click **Insert / Book** to generate a unique **PNR number**
- Booking confirmation is shown with all details

### 3. ❌ Cancellation Form
- Passengers enter their **PNR number** to look up the booking
- All reservation details are displayed for verification
- Click **Confirm Cancellation** to cancel the ticket (press OK to confirm)

---

## 🚀 How to Run

### Prerequisites
- Java JDK 8 or higher installed
- Any Java IDE (IntelliJ IDEA, Eclipse, NetBeans) or command line

### Run via Command Line

```bash
# 1. Navigate to the src directory
cd OnlineReservationSystem/src

# 2. Compile all Java files
javac reservation/*.java

# 3. Run the application
java reservation.Main
```

### Run via IDE
1. Open the project folder in your IDE
2. Set `src` as the source root
3. Run `reservation.Main`

---

## 🔑 Demo Login Credentials

| Username | Password   |
|----------|------------|
| admin    | admin123   |
| user1    | pass1      |
| rahul    | rahul@123  |
| priya    | priya@456  |

---

## 🗂️ Project Structure

```
OnlineReservationSystem/
├── src/
│   └── reservation/
│       ├── Main.java                  # Entry point
│       ├── UserDatabase.java          # User authentication
│       ├── Reservation.java           # Reservation data model
│       ├── ReservationDatabase.java   # In-memory booking store
│       ├── LoginForm.java             # Login screen (GUI)
│       ├── MainDashboard.java         # Navigation dashboard (GUI)
│       ├── ReservationForm.java       # Booking form (GUI)
│       └── CancellationForm.java      # Cancellation form (GUI)
└── README.md
```

---

## ✨ Features

- ✅ Clean dark-themed professional UI (Java Swing)
- ✅ Login authentication with shake animation on failure
- ✅ Auto-fill train name from train number
- ✅ PNR number auto-generation (unique 8-digit)
- ✅ Input validation on all forms
- ✅ Booking confirmation dialog with full details
- ✅ PNR-based ticket lookup and cancellation
- ✅ Smooth navigation between all modules

---

## 📊 Evaluation Criteria Addressed

| Criterion | Implementation |
|-----------|----------------|
| Code quality & structure | MVC-like separation: Model (Reservation.java), Database (ReservationDatabase), View (GUI forms) |
| Creativity & problem-solving | Auto-fill train names, animated login feedback, dark theme |
| Project completeness | All 3 modules fully implemented |
| Documentation | This README + inline code comments |

---

## 👨‍💻 Author

**Uma mewada**  
OIBSIP Internship — Java Programming Track
GitHub: https://github.com/UMA-MEWADA/OIBSIP

---

## 📝 Notes

- Data is stored in-memory (HashMap). Restarting the application clears bookings.
- To add persistent storage, a SQLite or MySQL database can be integrated.
- LinkedIn milestone post recommended after submission as per internship guidelines.
