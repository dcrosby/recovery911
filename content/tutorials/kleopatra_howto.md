---
title: "Kleopatra, The Good, Bad, and Ugly"
linkTitle: "Kleopatra Verification"
weight: 40
description: "Using Kleopatra for file authenticity verification"
---

The GPG trust model can be confusing, especially for new users who expect something more like HTTPS or code signing, where a certificate authority (CA) vouches for the software. GPG flips that model: you are the authority, which is empowering but also intimidating if no one explains it clearly.

This page walks you through creating your own certificate, and shows how to certify a public key like the Notepad++ Public key (nppGpgPub.asc). It covers the “Not Certified” warning in Kleopatra, which can be very confusing. It also explains why this model exists and how it differs from CA-based trust.

## 🔐 Understanding Kleopatra's “Not Certified” Warning & Certifying Keys

**📘 What--Status: Not certified!**
When you import a public GPG key into Kleopatra (like the Notepad++ key), you’ll likely see this message:

> **Status: Not certified!**

This can feel like a red flag—but it’s actually a normal part of how GPG works. This guide explains what it means, why it happens, and how to handle it properly.

---

## 🧠 What “Not Certified” Means

In GPG, **you are the trust authority**. Unlike HTTPS or code signing, where a certificate authority (CA) vouches for a key, GPG expects **you to verify and certify keys yourself**.

So when Kleopatra says “Not certified,” it’s just saying:

> “You haven’t personally verified this key’s identity yet.”

This doesn’t mean the key is bad—it just means you haven’t told Kleopatra that you trust it.

---

## ✅ What You’ll Learn
- How to check a key’s fingerprint
- How to create your own certificate (key pair)
- How to certify a public key in Kleopatra
- Why this process matters

---

## 🔽 Step 1: Check the Key’s Fingerprint

1. In Kleopatra, right-click the imported key (e.g., `nppGpgPub.asc`) and choose **Show Details**.
2. Look for the **Fingerprint**—a long string of hexadecimal characters.
3. Compare it to the official fingerprint published on the [Notepad++ GPG key page](https://notepad-plus-plus.org/gpg/nppGpgPub.asc).

🖼️ _Placeholder for screenshot: Kleopatra showing key fingerprint_

If the fingerprints match, you can proceed with certification.

---

## 🛠 Step 2: Create Your Own Certificate (Key Pair)

Before you can certify other keys, you need your own identity in Kleopatra.

1. Open Kleopatra.
2. Go to **File → New Certificate**.
3. Choose **Create a personal OpenPGP key pair**.
4. Enter your name and email (can be fake if you're just testing).
5. Click **Next**, then **Create Key**.
6. Save a backup of your key when prompted.

🖼️ _Placeholder for screenshot: Certificate creation wizard_

Now you have your own certificate, and Kleopatra knows who you are.

---

## 🧾 Step 3: Certify the Imported Key

1. Right-click the imported key (e.g., Notepad++).
2. Choose **Certify Certificate**.
3. Confirm that you’ve verified the fingerprint.
4. Select your own key as the certifier.
5. Click **Certify**.

🖼️ _Placeholder for screenshot: Certification dialog in Kleopatra_

Once certified, Kleopatra will show the key as **trusted**.

---

## 🔒 Why This Model Exists

GPG is built for decentralized trust. Instead of relying on a central authority, it lets individuals and communities build their own **web of trust**.

This is great for:
- Open-source projects
- Secure communication
- Offline verification

But it can be confusing for first-time users—so this guide is here to help.

---

## 🧰 For Trainers and Recovery Kits

This guide is ideal for:
- Teaching the GPG trust model
- Preparing users to verify software securely
- Including in sandbox environments for safe testing

---

## 🧩 What’s Next?

Now that you’ve certified the Notepad++ key, you can use Kleopatra to verify the app’s signature with confidence. In the next lesson, we’ll show how to add verified tools to your Windows Sandbox.

Need help automating this or bundling it into a training flow? I’ve got your back.

Let me know if you want to add screenshots, create a printable version, or build a one-click sandbox script to walk users through this. We’re making security human here.