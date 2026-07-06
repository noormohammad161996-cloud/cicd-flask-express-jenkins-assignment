# Flask Jenkins Pipeline

## Description

This Jenkins Pipeline automates Continuous Integration for the Flask backend.

---

## Pipeline Stages

### 1. Checkout Source Code

Clone the GitHub repository.

---

### 2. Verify Python

```bash
python3 --version
```

---

### 3. Install Dependencies

```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

---

### 4. Verify Flask Application

```bash
python -m py_compile app.py
```

---

### 5. Success

```
Flask Pipeline Completed Successfully!
```

---

## Jenkinsfile

Location

```
part2-cicd/flask-pipeline/Jenkinsfile
```

---

## Result

Pipeline executed successfully.

---

## Author

Noor Mohammad