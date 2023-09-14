#!/bin/bash

servers=(
    "azeus2devspr01"
    "gtwbmsdev01"
    "gtwbmsdev03"
    "mce1metxspr03"
    "mue2artspr1"
    "mue2asbspr1"
    "mue2cloroxspr1"
    "mue2esibms1"
    "mue2esidemospr1"
    "mue2esidmospr01"
    "mue2esisec1"
    "mue2nikespr1"
    "mue2scjspr1"
    "mue2ubrspr1"
    "azeus2opsfile01"
    "azeus2opsrds01"
    "azeus2opsutil01"
)
for x in ${!servers[@]}
do
     bash /mnt/e/code/Tom.Tools/winrm-setup.sh ${servers[$x]} "ENVSYSINC\twarrena" "uuKEJ$^E%*c7zt2p"
done