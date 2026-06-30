# Part 1 - Deploy Flask and Express Applications on a Single Amazon EC2 Instance

## Project Overview

This project demonstrates the deployment of a Flask backend and an Express frontend on a single Amazon EC2 instance running Ubuntu 26.04 LTS.

Both applications are configured to run simultaneously on different ports and are managed using PM2 to ensure they remain running even after server reboot.

---

# Architecture

```
                    GitHub Repository
                           │
                           ▼
                  Amazon EC2 (Ubuntu 26.04)
                           │
        ┌──────────────────┴──────────────────┐
        │                                     │
        ▼                                     ▼
 Flask Backend                        Express Frontend
 Port: 5000                           Port: 3000
        │                                     │
        └──────────────────┬──────────────────┘
                           │
                           ▼
                     PM2 Process Manager
```

---

# Technologies Used

- Amazon EC2
- Ubuntu 26.04 LTS
- Python 3.14
- Flask 3.0.2
- Node.js 22
- Express.js
- PM2
- Git
- GitHub

---

# Project Structure

```
part1-deployment/
│
├── flask-app/
│   ├── app.py
│   ├── requirements.txt
│   ├── README.md
│   └── venv/
│
├── express-app/
│   ├── app.js
│   ├── package.json
│   └── README.md
│
├── scripts/
│   ├── install_dependencies.sh
│   ├── deploy_flask.sh
│   ├── deploy_express.sh
│   └── start_services.sh
│
├── architecture.png
└── README.md
```

---

# EC2 Instance Details

| Item | Value |
|------|-------|
| Operating System | Ubuntu Server 26.04 LTS |
| Instance Type | t3.micro |
| Region | ap-south-1 (Mumbai) |
| Deployment | Single EC2 Instance |

---

# Software Installed

- Git
- Python3
- pip
- Python Virtual Environment (venv)
- Node.js
- npm
- PM2

---

# Flask Application

Application Directory

```
part1-deployment/flask-app
```

Run Application

```bash
python app.py
```

Application Port

```
5000
```

Output

```
Hello from Flask Backend - CI/CD Assignment
```

Public URL

```
http://3.109.210.45:5000/
```

---

# Express Application

Application Directory

```
part1-deployment/express-app
```

Run Application

```bash
npm start
```

Application Port

```
3000
```

Output

```
Hello from Express Frontend - CI/CD Assignment
```

Public URL

```
http://3.109.210.45:3000/
```

---

# PM2 Process Manager

Both applications are managed using PM2.

Start Flask

```bash
pm2 start venv/bin/python --name flask-app -- app.py
```

Start Express

```bash
pm2 start app.js --name express-app
```

Check Running Applications

```bash
pm2 list
```

Save PM2 Configuration

```bash
pm2 save
```

Enable PM2 on System Startup

```bash
pm2 startup
```

---

# Verification Commands

Check Flask

```bash
curl http://localhost:5000
```

Output

```
Hello from Flask Backend - CI/CD Assignment
```

Check Express

```bash
curl http://localhost:3000
```

Output

```
Hello from Express Frontend - CI/CD Assignment
```

---

# Security Group Configuration

The following inbound ports were configured:

| Port | Purpose |
|------|----------|
| 22 | SSH |
| 80 | HTTP |
| 443 | HTTPS |
| 3000 | Express Application |
| 5000 | Flask Application |
| 8080 | Jenkins (Part 2) |

---

# Deployment Workflow

1. Launch Amazon EC2 Instance
2. Install Git
3. Install Python
4. Install Node.js
5. Install PM2
6. Clone GitHub Repository
7. Configure Python Virtual Environment
8. Install Flask Dependencies
9. Install Express Dependencies
10. Start Flask Application
11. Start Express Application
12. Configure PM2
13. Verify Both Applications
14. Access Applications Using Public IP

---

# Screenshots

The following screenshots are included in the documentation.

- EC2 Instance Running
- Installed Dependencies
- Flask Application Running
- Express Application Running
- PM2 Process List
- Security Group Configuration
- Public URLs Working
- Terminal Verification Commands

---

# Learning Outcomes

- Amazon EC2 Deployment
- Linux Server Administration
- Flask Deployment
- Express Deployment
- Python Virtual Environment
- Node.js Package Management
- PM2 Process Management
- Git & GitHub
- Security Group Configuration
- Public Application Deployment

---

# Project Status

**Part 1 Successfully Completed**

All project requirements have been implemented successfully.

```
EC2 Instance        ✔
Flask Deployment    ✔
Express Deployment  ✔
PM2 Configuration   ✔
Public Access       ✔
Security Groups     ✔
Documentation       ✔
```