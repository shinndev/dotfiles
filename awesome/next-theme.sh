#/bin/sh

if [ "$1" == "$2" ]; then
    next=1
else
    current=$1
    next=$((current+1))
fi

var="current=$1"
var2="current=$next"
sed -i "s/$var/$var2/g" $HOME/.config/awesome/rc.lua