# Express Jenkins Pipeline

## Description

This Jenkins Pipeline automates Continuous Integration for the Express frontend.

---

## Pipeline Stages

### 1. Checkout Source Code

Clone GitHub repository.

---

### 2. Verify Node.js

```bash
node --version
npm --version
```

---

### 3. Install Dependencies

```bash
npm install
```

---

### 4. Verify Express Application

```bash
node --check app.js
```

---

### 5. Success

```
Express Pipeline Completed Successfully!
```

---

## Jenkinsfile

Location

```
part2-cicd/express-pipeline/Jenkinsfile
```

---

## Result

Pipeline executed successfully.

---

## Author

Noor Mohammad