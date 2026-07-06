# GitHub Webhook Setup

This project supports automatic Jenkins builds using GitHub Webhooks.

---

## Step 1

Open GitHub Repository

Settings

↓

Webhooks

↓

Add Webhook

---

## Step 2

Payload URL

```
http://<EC2-Public-IP>:8080/github-webhook/
```

Example

```
http://3.110.xx.xxx:8080/github-webhook/
```

---

## Step 3

Content Type

```
application/json
```

---

## Step 4

Events

Choose

```
Just the push event
```

---

## Step 5

Save Webhook

---

## Configure Jenkins

Open Jenkins Job

↓

Configure

↓

Build Triggers

Enable

```
GitHub hook trigger for GITScm polling
```

---

## Test Webhook

Make a code change

↓

Git Commit

↓

Git Push

↓

GitHub sends webhook

↓

Jenkins automatically starts build

---

## Verify

GitHub

↓

Recent Deliveries

Status should be

```
200 OK
```

Jenkins

↓

Build History

New build should start automatically.

---

Webhook integration completed successfully.