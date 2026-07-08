# GitHub Webhook Setup

This project uses **GitHub Webhooks** to automatically trigger Jenkins pipelines whenever code is pushed to the GitHub repository.

---

# Prerequisites

- AWS EC2 Instance (Ubuntu 24.04 LTS)
- Jenkins installed and running
- Git installed
- GitHub Repository
- Jenkins accessible from the internet
- Jenkins jobs configured as Pipeline jobs

---

# GitHub Repository

Repository URL:

```
https://github.com/noormohammad161996-cloud/cicd-flask-express-jenkins-assignment
```

---

# Step 1 - Open GitHub Repository

Navigate to:

```
Repository
    ↓
Settings
    ↓
Webhooks
    ↓
Add Webhook
```

---

# Step 2 - Configure Payload URL

Enter the Jenkins webhook endpoint.

Payload URL

```
http://3.109.210.45:8080/github-webhook/
```

> Replace the EC2 Public IP if your server IP changes.

---

# Step 3 - Content Type

Select

```
application/json
```

---

# Step 4 - Secret

Leave this field empty.

---

# Step 5 - SSL Verification

Since Jenkins is running over HTTP for this practice project, select

```
Disable SSL Verification
```

---

# Step 6 - Events

Choose

```
Just the push event
```

---

# Step 7 - Save Webhook

Click

```
Add Webhook
```

GitHub sends an initial Ping event to verify the webhook.

---

# Configure Jenkins

Open Jenkins.

Configure both Pipeline Jobs.

## Flask Pipeline

```
Dashboard
    ↓
flask-pipeline
    ↓
Configure
    ↓
Triggers
```

Enable

```
GitHub hook trigger for GITScm polling
```

Click

```
Save
```

---

## Express Pipeline

```
Dashboard
    ↓
express-pipeline
    ↓
Configure
    ↓
Triggers
```

Enable

```
GitHub hook trigger for GITScm polling
```

Click

```
Save
```

---

# Testing the Webhook

Make any code change.

Example:

```
README.md
```

Run the following commands:

```bash
git add .
git commit -m "Testing GitHub Webhook"
git push origin main
```

---

# What Happens Internally

```
Developer

        │

        ▼

Git Commit

        │

        ▼

Git Push

        │

        ▼

GitHub Repository

        │

        ▼

GitHub Webhook

        │

        ▼

Jenkins

        │

        ▼

Automatic Pipeline Trigger

        │

        ▼

Checkout Source Code

        │

        ▼

Run Pipeline Stages

        │

        ▼

Build Successful
```

---

# Verify Webhook

## GitHub

Navigate to

```
Settings

↓

Webhooks

↓

Recent Deliveries
```

Expected Status

```
200 OK
```

---

## Jenkins

Navigate to

```
Dashboard

↓

Build History
```

A new build should automatically start without clicking **Build Now**.

---

# Pipeline Jobs

This project contains two Jenkins pipelines.

## Flask Pipeline

Stages

- Checkout SCM
- Checkout Source Code
- Verify Python
- Install Dependencies
- Verify Flask App
- Post Actions

---

## Express Pipeline

Stages

- Checkout SCM
- Checkout Source Code
- Verify Node.js
- Install Dependencies
- Verify Express App
- Post Actions

---

# Technologies Used

- AWS EC2
- Ubuntu 24.04 LTS
- Jenkins
- Git
- GitHub
- GitHub Webhooks
- Flask
- Express.js
- Python
- Node.js
- PM2

---

# Outcome

✅ GitHub Webhook configured successfully

✅ Automatic Jenkins build triggered after every Git Push

✅ Continuous Integration implemented successfully

---

# Repository

https://github.com/noormohammad161996-cloud/cicd-flask-express-jenkins-assignment

---

**Author**

Noor Mohammad

GitHub

https://github.com/noormohammad161996-cloud

LinkedIn

https://www.linkedin.com/in/noor-mohammad-828669275/