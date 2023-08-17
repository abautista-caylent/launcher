#!/bin/bash
sudo yum update -y
yum install curl libunwind libicu libcurl openssl libuuid.x86_64 wget tar gzip --skip-broken
wget https://raw.githubusercontent.com/PowerShell/PowerShell/master/docker/InstallTarballPackage.sh
sudo ./InstallTarballPackage.sh 7.2.7 powershell-7.2.7-linux-x64.tar.gz
chmod +x InstallTarballPackage.sh
sudo yum install -y git
git clone https://github.com/sysdig/TR-Blogs.git
pwsh -Command "Install-Module -Name powershell-yaml -Scope CurrentUser -Force"
pwsh -Command "IEX (IWR 'https://raw.githubusercontent.com/redcanaryco/invoke-atomicredteam/master/install-atomicredteam.ps1' -UseBasicParsing); Install-AtomicRedTeam -getAtomics" -Force > /tmp/pwsh_output.log 2>&1
sudo mkdir -p /AtomicRedTeam/atomics/
sudo cp -r TR-Blogs/atomic-red-docker/atomics-overrides /AtomicRedTeam/atomics
sudo cp TR-Blogs/atomic-red-docker/RunTests.ps1 /root
echo 'curl -o /tmp/install_remote.sh https://raw.githubusercontent.com/abautista-caylent/launcher/main/amazon-linux/install_d.sh && chmod +x /tmp/install_remote.sh && /tmp/install_remote.sh' >> /home/ec2-user/.bashrc
echo "Script completed" > /tmp/script_status.log
