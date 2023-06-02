#!/bin/bash
set -eu -o pipefail

curl -fsSL https://pkg.ddev.com/apt/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/ddev.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ddev.gpg] https://pkg.ddev.com/apt/ * *" | sudo tee /etc/apt/sources.list.d/ddev.list
sudo apt update >/dev/null && sudo apt install -y ddev xdg-utils >/dev/null

