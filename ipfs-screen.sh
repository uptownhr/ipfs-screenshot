#! /bin/bash
echo "testing" >> ~/.ipfs-screen/ipfs-add.log
file=ipfs-screen.jpg

gnome-screenshot -a -f ~/.ipfs-screen/$file

hash_log=$(ipfs add ~/.ipfs-screen/$file)

echo $hash_log >> ~/.ipfs-screen/ipfs-add.log


hash=$(echo $hash_log | awk '{ print $2; }')

echo "https://ipfs.io/ipfs/$hash" | xclip -selection clipboard
