#!/bin/bash
sleep 60;
user=`whoami`
path="/home/$user/.conky"
conky -c "$path/conky-right";
conky -c "$path/conky-top";
