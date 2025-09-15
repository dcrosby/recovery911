---
title: "Safe Downloads - How To"
linkTitle: "Safe Downloads"
weight: 10
description: "How to not download viruses and malware"
---

{{< toc >}}

**Goal**: Verify the certificate for a file downloaded from the internet
**🛡️ Verify Software Authenticity** of the Gpg4win.exe download using Windows

## 📘 Why This Matters
Before using tools like Gpg4win to verify other software, you need to **trust Gpg4win itself**. This guide shows you how to verify its authenticity using **Windows' built-in digital signature check**, which is simple and doesn't require any technical background.

---

## ✅ What You’ll Need
- A Windows PC
- The Gpg4win installer (`gpg4win-4.4.1.exe` or latest)
- Basic file navigation skills

---

## 🔽 Step 1: Download Gpg4win Safely
Go to the official Gpg4win site and download the installer:
👉 [Gpg4win Download Page](https://gpg4win.org/thanks-for-download.html)

Save the file to a known location, like your Desktop or Downloads folder.

---

## 🔍 Step 2: Open File Properties
1. Right-click the downloaded `.exe` file.
2. Select **Properties**.
3. Click the **Digital Signatures** tab.

🖼️ _Placeholder for screenshot: Properties window showing "Digital Signatures" tab_

---

## 🧾 Step 3: Inspect the Signature
1. In the list, select the signature from **g10 Code GmbH**.
2. Click **Details**.
3. Look for the message:  
   **“This digital signature is OK.”**

🖼️ _Placeholder for screenshot: Signature Details window showing “This digital signature is OK”_

---

## 🧠 What This Means
- ✅ If you see “This digital signature is OK,” Windows has verified the file using its trusted certificate authority system.
- 🏢 The signer **g10 Code GmbH** is a legitimate maintainer of Gpg4win and GnuPG.
- 🔒 This confirms the installer hasn’t been tampered with and comes from a trusted source.

---

## 🧰 What’s Next?
Now that you’ve verified Gpg4win, you can use it to validate other software (like Notepad++). In the next section, we’ll walk through how to use Gpg4win for deeper verification using GPG signatures.

---

## 🧑‍🏫 For Trainers
This guide is designed for non-technical users. You can print it, include it in onboarding kits, or bundle it with sandbox recovery tools.

Want to automate this check or add screenshots? Just ask—I can help you build a visual walkthrough or script it for one-click validation.
