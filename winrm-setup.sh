#!/bin/bash
+//
target=$1
user=$2
password=$3
url="https://raw.githubusercontent.com/ansible/ansible-documentation/devel/examples/scripts/ConfigureRemotingForAnsible.ps1"
psexec.exe \\\\$target -u "$user" -p "$password" -i powershell.exe -Command "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -uri $url -outfile c:\tmp\ConfigureAnsible.ps1"
psexec.exe \\\\$target -u "$user" -p "$password" -s -i powershell.exe -ExecutionPolicy ByPass -File "c:\tmp\ConfigureAnsible.ps1"