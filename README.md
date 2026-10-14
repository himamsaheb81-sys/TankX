# TANKX - Smart Fuel Tank Protection System
### An Enterprise IoT-Based Anti-Fuel Theft Security Platform for Heavy Commercial Trucks

![TankX Banner](https://images.unsplash.com/photo-1558981403-c5f9899a28bc?auto=format&fit=crop&q=80&w=1200)

**TANKX** is a production-ready, enterprise-grade IoT security application inspired by Tesla and Rivian modern dark glassmorphism dashboards. It protects heavy-duty commercial truck diesel tanks from fuel siphoning, drilling, cutting, and tampering using multi-sensor IoT telemetry (ESP32, MPU6050 vibration, JSN-SR04T ultrasonic distance, SIM800L 4G), real-time WebSockets, AI threat scoring, Leaflet live GPS tracking, and ESP32-CAM visual verification.

---

## 🌟 Key Features

- 🛡️ **Tesla/Rivian Dark Glassmorphism UI**: High contrast obsidian aesthetics (`#080b11`), glowing cyan accents, responsive design for desktop, tablet, and mobile displays.
- 👥 **Multi-Role Access Control**: Tailored workflows for **Truck Driver**, **Vehicle Owner**, **Fleet Manager**, and **Admin**.
- ⚡ **AI Threat Scoring Engine (0 - 100)**: Real-time sensor fusion combining drill vibration frequency, sudden liquid drops, tamper micro-switches, and power supply wire cuts.
- 📡 **Live IoT Telemetry & WebSockets**: Socket.io real-time updates every 3 seconds for fuel levels, battery voltage, temperature, and GPS positions.
- 🗺️ **Leaflet GPS & Geofencing**: Live truck tracking on interactive map with speed, heading, address readout, and circular geofence boundary overlay.
- 📷 **ESP32-CAM Visual Feed**: Instant snapshot request trigger over MQTT and photo history gallery.
- 🔊 **110dB Siren & Multi-Channel Alerts**: Remote alarm activation, browser siren synthesizer, push notifications, SMS alerts, and emergency call triggers.
- 📊 **Fuel & Loss Analytics**: Detailed consumption graphs, ROI savings calculations, weekly threat distribution heatmap, and **PDF & CSV export**.
- 🔌 **In-Memory Store & MongoDB Support**: Works out-of-the-box with full seed data without requiring external database installation, while seamlessly connecting to MongoDB Atlas when specified.

---

## 🧭 Project Architecture Flow (6-Part Framework)

| Part | What you learn | Common technologies | TankX Project Implementation & Files |
|---|---|---|---|
| 🎨 **Frontend** | What the user sees and interacts with | HTML, CSS, JavaScript, Bootstrap | [**Part 1: Frontend Guide**](docs/1_FRONTEND.md) (`client/`, React, Next.js 14, Tailwind, Leaflet) |
| ⚙️ **Backend** | Server-side logic | Python, Django / Flask | [**Part 2: Backend Guide**](docs/2_BACKEND.md) (`server/index.js`, Threat Engine, `iot/` ESP32 C++, `.venv`) |
| 🗄️ **Database** | Store and retrieve data | MySQL, PostgreSQL, SQLite | [**Part 3: Database Guide**](docs/3_DATABASE.md) (`server/models/Schemas.js`, MongoDB, In-Memory Store, GCS) |
| 🔗 **APIs** | Communication between frontend & backend | REST API | [**Part 4: APIs Guide**](docs/4_APIS.md) (`server/routes/`, `mocks.json`, Socket.io WebSockets) |
| 🛠️ **Tools** | Development and collaboration | Git, GitHub, VS Code | [**Part 5: Tools Guide**](docs/5_TOOLS.md) (Git, `.gitignore`, `.vscode`, PlatformIO, Docker, Scripts) |
| 🚀 **Project** | Build a complete application | Python + frontend + database | [**Part 6: Project Guide**](docs/6_PROJECT.md) (`package.json`, `Start-TankX.bat`, End-to-End System) |

---

## 📁 Repository Structure

```
TankX/
├── backend/                       # Python Backend (FastAPI, foundational scripts, threat engine)
│   ├── main.py                    # Lesson entrypoint (greet function) & FastAPI API engine (Port 8000)
│   └── requirements.txt           # Python dependencies (fastapi, uvicorn, pydantic, httpx)
├── frontend/                      # React / Next.js Frontend Application (Junction to client/)
│   ├── package.json
│   ├── src/
│   │   ├── app/                   # Next.js App Router (layout, page, globals.css)
│   │   ├── components/            # Tesla-style UI views & navigation
│   │   └── context/               # Auth, Telemetry, and Language contexts
├── .venv/                         # Python Virtual Environment
├── requirements.txt               # Workspace-level Python dependencies
├── package.json                   # Root workspace scripts launcher
├── README.md                      # Comprehensive project documentation
├── Start-TankX.bat                # 1-Click launcher for Windows (Unified Port 3000)
├── Stop-TankX.bat                 # 1-Click shutdown for Windows
├── server/                        # Express.js REST API & Socket.io Backend Gateway
├── client/                        # Next.js Frontend source directory
├── iot/                           # Embedded firmware for ESP32 + MPU6050 + SIM800L
└── docs/                          # Architecture & deployment specifications
```

---

## 🚀 Quick Start Guide

### Option 1: Python Virtual Environment & Foundational Script (Course Lesson)
```bash
# 1. Activate Python virtual environment (.venv)
# On Windows (PowerShell):
.venv\Scripts\Activate.ps1
# On Windows (CMD):
.venv\Scripts\activate.bat
# On macOS / Linux:
source .venv/bin/activate

# 2. Run the foundational Python greeting script (Outputs: Hello, World!)
python backend/main.py
# Or via npm shortcut:
npm run greet

# 3. Launch the FastAPI Backend Server
python backend/main.py --server
# Or via npm shortcut:
npm run backend:py
# Interactive API documentation: http://localhost:8000/docs
```

### Option 2: Full-Stack React Frontend + Backend (Concurrently)
```bash
# 1. Install all dependencies
npm install
npm --prefix server install
npm --prefix client install
.venv\Scripts\pip.exe install -r requirements.txt

# 2. Run full system concurrently (Express Gateway + React Frontend + FastAPI Engine)
npm run dev:full
```

### Option 3: Windows 1-Click Launcher (Recommended)
Double click [`Start-TankX.bat`](Start-TankX.bat) in the root directory.
- Automatically boots the Next.js internal renderer (Port 3001) in background.
- Launches the Unified Server Engine (Port 3000).
- Automatically opens `http://localhost:3000` in your web browser.

---

## ⚡ Testing Fuel Theft Simulation Live
In the top right navigation bar of the TankX application, click the **"Simulate Theft"** button:
1. The **AI Threat Score** will spike to **98/100 (CRITICAL THEFT IN PROGRESS)**.
2. A glowing red emergency warning banner will flash across the UI.
3. The **110dB Siren audio synthesizer** will sound.
4. An ESP32-CAM snapshot will automatically be captured and logged in the camera module gallery!

---

## 📝 License & Enterprise Support
Copyright © 2026 TankX Security Protocols. Enterprise Grade Solution.
