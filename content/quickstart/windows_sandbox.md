---
title: "Windows Sandbox"
linktitle: "Windows Sandbox"
date: 2025-09-15
description: "How to use and configure Windows Sandbox for isolated testing and recovery tasks."
tags: ["sandbox", "security", "recovery"]
---

**🧪 A Secure Testing Environment**

Windows Sandbox provides a lightweight, temporary virtual environment for safely running untrusted applications or performing recovery tasks without affecting your host system.

---

## 🚀 Launching Windows Sandbox

To start the default Sandbox:

1. Press `Start` and search for **Windows Sandbox**
2. Click to launch a clean, isolated Windows environment

### Default Features
- **vGPU**: Enabled (unless on ARM64)
- **Networking**: Enabled via Hyper-V switch
- **Clipboard**: Shared with host
- **Audio Input**: Enabled
- **Video Input**: Disabled
- **Printer Redirection**: Disabled
- **Protected Client Mode**: Disabled

> ⚠️ Note: Networking is enabled by default, which may expose internal resources. Use a custom `.wsb` file to disable it.

---

## ⚙️ Creating a Custom Sandbox Configuration

Windows Sandbox supports `.wsb` configuration files written in XML. These allow you to customize the environment.

### 📝 Sample `.wsb` File

```xml
<Configuration>
  <VGpu>Disable</VGpu>
  <Networking>Disable</Networking>
  <AudioInput>Disable</AudioInput>
  <VideoInput>Disable</VideoInput>
  <ProtectedClient>Enable</ProtectedClient>
  <PrinterRedirection>Disable</PrinterRedirection>
  <ClipboardRedirection>Enable</ClipboardRedirection>
  <MemoryInMB>4096</MemoryInMB>
  <MappedFolders>
    <MappedFolder>
      <HostFolder>C:\RecoveryToolbox</HostFolder>
      <SandboxFolder>C:\Toolbox</SandboxFolder>
      <ReadOnly>true</ReadOnly>
    </MappedFolder>
  </MappedFolders>
  <LogonCommand>
    <Command>cmd.exe /c echo Welcome to Recovery Sandbox!</Command>
  </LogonCommand>
</Configuration>


