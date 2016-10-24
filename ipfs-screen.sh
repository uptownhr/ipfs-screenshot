#! /bin/bash
if ! command -v ipfs &> /dev/null; then
    echo "IPFS is not available, install from: https://ipfs.io/"
    exit 1
fi

echo "testing" 1>> "$HOME/.ipfs-screen/ipfs-add.log"

FPATH="ipfs-screen.jpg"

if command -v gnome-screenshot &> /dev/null; then
    gnome-screenshot -a -f "$HOME/.ipfs-screen/$FPATH"
elif command -v mate-screenshot &> /dev/null; then
    mate-screenshot -a "$HOME/.ipfs-screen/$FPATH"
else
    echo "OS is not supported yet"
    exit 1
fi

hash_log=$(ipfs add "$HOME/.ipfs-screen/$FPATH")

echo "$hash_log" 1>> "$HOME/.ipfs-screen/ipfs-add.log"

HASH=$(echo "$hash_log" | awk '{ print $2; }')

echo "https://ipfs.io/ipfs/$HASH" | xclip -selection clipboard
