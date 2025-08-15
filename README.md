# 🛰 EthStorage V1 Trusted Setup – One Click Script

This repo contains my one-click script to join the **EthStorage V1 Trusted Setup Ceremony** without manually typing every command.

It installs everything, sets up the tool, logs in with GitHub, and starts your contribution in the background — all in one go.

---

## 🔧 VPS Specs (Recommended)

- **OS:** Ubuntu 22.04 LTS  
- **CPU:** 2 vCPU or higher  
- **RAM:** 4 GB+  
- **Disk:** 30 GB SSD or more  
- **Network:** Good, stable connection  
- **SSH access:** Yes  

---

## 📋 GitHub Account Rules

Before you start, your GitHub account must:
- Be at least **1 month old**
- Have **1+ public repo**
- Follow **5+ accounts** and have **1+ follower**
- Allow the tool to **read/write Gists** (you’ll approve this during login)

---

## 🚀 Run in One Click

Paste this into your VPS terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/TestnetTerminal/Eth-Storage-Ceremony-guide/main/setup.sh | bash
```
---

## 📦 That’s it — the script will:

- Install updates & required packages
- Install Node.js v18 + npm v9.2
- Install Phase2 CLI
- Log in with GitHub
- Start your contribution in a screen session so it won’t stop if you disconnect

---

# 🖥 View or Exit the Ceremony

View logs:

```bash
screen -r ceremony
```

Detach (leave it running):

CTRL + A then D

---

## 🧹 Cleanup After You Finish

**Why delete?**  
For safety reasons  once you’re done, delete and log out to keep your GitHub safe.  

Clean your environment:

```bash
phase2cli clean
phase2cli logout
cd ~ && rm -rf ~/trusted-setup-tmp
```


If you used a rented VPS  destroy it after contributing.


---

## 🏁 Final Words

That’s all there is to it.  
You’ve now joined the EthStorage V1 Trusted Setup Ceremony in the easiest way possible.  

Remember  **once you’re done, clean up and shut down your VPS** to keep your randomness safe.  
We don’t just run commands here  we run them smart. 🛡

See you in the next , and until then… happy validating! 🚀

---

## 🌍 Connect With Us

Telegram: [https://t.me/TestnetTerminal](https://t.me/TestnetTerminal)  
X/Twitter: [https://x.com/TestnetTerminal](https://x.com/TestnetTerminal)
Github: [https://https://github.com/TestnetTerminal](https://github.com/TestnetTerminal)

