---
title: "Notepad++ Portable Text Editor"
linkTitle: "Notepad++ Portable"
weight: 20
description: "Notepad++ - Download, Verify, and no need to install"
---

**Goal**: Safely download the portable text editor Notepad++ (no need to install)
**🛡️ Verify Software Authenticity** using Gpg4win.exe download

This procedure walks you through downloading the portable version of Notepad++, retrieving its GPG key and signature, and verifying it using Gpg4win (via Kleopatra). This builds on the previous Gpg4win verification lesson and sets the stage for sandbox deployment.

## 🧪 Verifying Notepad++ (Portable) with Gpg4win

### 📘 Why This Matters
Before adding tools like Notepad++ to your Windows Sandbox, it's important to verify their authenticity. This guide shows how to use **Gpg4win** to verify the **portable version of Notepad++**, ensuring it hasn’t been tampered with.

This is a follow-up to our previous lesson on verifying Gpg4win itself. Now, we’ll use Gpg4win to verify another app—Notepad++—as a real-world example.

---

### ✅ What You’ll Need
- Gpg4win installed (includes Kleopatra)
- Internet access to download Notepad++ and its verification files

---

### 🔽 Step 1: Download Notepad++ Portable and Verification Files

Go to the [Notepad++ v8.8.5 download page](https://notepad-plus-plus.org/downloads/v8.8.5/) and download:

1. `npp.portable.x64.zip` – the portable app
2. `npp.portable.x64.zip.sig` – the GPG signature file
3. `nppGpgPub.asc` – the public key (linked on the same page)

Place all three files in the same folder, e.g., `Downloads\NotepadVerify`.

---

### 🔑 Step 2: Import the Public Key into Kleopatra

1. Open **Kleopatra** (installed with Gpg4win).
2. Click **File → Import Certificates**.
3. Select `nppGpgPub.asc`.
4. You should see a confirmation that the key was successfully imported.

🖼️ _Placeholder for screenshot: Kleopatra showing successful key import_

---

### 🧪 Step 3: Verify the Signature

1. In Kleopatra, go to **File → Verify/Decrypt**.
2. Select `npp.portable.x64.zip.sig`.
3. Kleopatra will automatically locate the matching ZIP file and verify it.

🖼️ _Placeholder for screenshot: Kleopatra showing “Signature is valid” message_

---

## 🧠 What the Result Means
- ✅ **“Signature is valid”** means the ZIP file matches the signature and hasn’t been altered.
- 🔒 You’ve confirmed the file’s integrity using cryptographic verification.
- 🧑‍💻 This is a best practice before using any tool in your sandbox or recovery workflow.

---

## 🧰 For Trainers and Recovery Kits
This guide is ideal for:
- Teaching new users how to verify third-party software
- Preparing tools for secure sandbox deployment
- Including in recovery toolkits for offline validation

---

## 🧩 What’s Next?
In the next lesson, we’ll show how to **add Notepad++ to your Windows Sandbox** using a `.wsb` configuration file—so it’s ready to use in a secure, isolated environment.

Want to automate this verification or bundle it with other apps? I can help you build a full sandbox toolkit.

Let me know when you're ready to move on to the sandbox integration lesson—I’ll help you build a .wsb file and prep the folder structure.