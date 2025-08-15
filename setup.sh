#!/bin/bash
set -e

echo "🚀 Starting EthStorage V1 Trusted Setup Ceremony environment setup..."

# 1️⃣ Update & Install Dependencies
sudo apt update && sudo apt upgrade -y
sudo apt install -y curl git build-essential screen

# 2️⃣ Install Node.js v18 & npm v9.2
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g npm@9.2

# 3️⃣ Show Versions
node -v
npm -v

# 4️⃣ Create Temporary Directory
mkdir -p ~/trusted-setup-tmp && cd ~/trusted-setup-tmp

# 5️⃣ Install Phase2 CLI
sudo npm install -g @p0tion/phase2cli

# 6️⃣ Verify CLI Installation
phase2cli --version

# 7️⃣ Authenticate with GitHub
echo "🌐 Please authenticate with GitHub in the browser window after this..."
phase2cli auth

# 8️⃣ Start Ceremony in screen session
echo "📦 Starting ceremony inside 'screen' session..."
screen -S ceremony -dm bash -c "phase2cli contribute -c ethstorage-v1-trusted-setup-ceremony"

# 9️⃣ Big ASCII Banner
echo ""
echo "████████╗███████╗███████╗████████╗███╗   ██╗███████╗████████╗    ████████╗███████╗██████╗ ███╗   ███╗██╗███╗   ██╗ █████╗ ██╗     "
echo "╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝████╗  ██║██╔════╝╚══██╔══╝    ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔══██╗██║     "
echo "   ██║   █████╗  ███████╗   ██║   ██╔██╗ ██║█████╗     ██║          ██║   █████╗  ██████╔╝██╔████╔██║██║██╔██╗ ██║███████║██║     "
echo "   ██║   ██╔══╝  ╚════██║   ██║   ██║╚██╗██║██╔══╝     ██║          ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║██║╚██╗██║██╔══██║██║     "
echo "   ██║   ███████╗███████║   ██║   ██║ ╚████║███████╗   ██║          ██║   ███████╗██║  ██║██║ ╚═╝ ██║██║██║ ╚████║██║  ██║███████╗"
echo "   ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═══╝╚══════╝   ╚═╝          ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝"
echo ""
echo "🌐 Telegram: https://t.me/TestnetTerminal"
echo "🌐 Twitter/X: https://x.com/TestnetTerminal"
echo "📞 Need Help?: https://t.me/Amit3701"
echo ""
echo "✅ All set! Use 'screen -r ceremony' to see progress."
