# Jenkins Setup Guide

## Prerequisites

- Ubuntu EC2 Instance
- Java 21
- Git
- Jenkins
- Node.js
- Python 3

---

## Install Java

```bash
sudo apt update
sudo apt install openjdk-21-jdk -y
```

Verify

```bash
java -version
```

---

## Install Jenkins

```bash
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
/usr/share/keyrings/jenkins-keyring.asc > /dev/null
```

```bash
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null
```

```bash
sudo apt update
sudo apt install jenkins -y
```

---

## Start Jenkins

```bash
sudo systemctl enable jenkins
sudo systemctl start jenkins
```

Check Status

```bash
sudo systemctl status jenkins
```

---

## Open Jenkins

```
http://<EC2-Public-IP>:8080
```

---

## Unlock Jenkins

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

---

## Install Suggested Plugins

Install all recommended plugins.

---

## Create Admin User

- Username
- Password
- Email

---

## Install Required Tools

- Git
- NodeJS Plugin
- Pipeline Plugin
- GitHub Plugin

---

## Verify Installation

```bash
java -version
git --version
node --version
npm --version
python3 --version
jenkins --version
```

---

Jenkins setup completed successfully.