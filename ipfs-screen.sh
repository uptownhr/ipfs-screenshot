#! /bin/bash
echo "testing" >> ~/.ipfs-screen/ipfs-add.log
file=ipfs-screen.jpg

if command -v gnome-screenshot &> /dev/null; then
    gnome-screenshot -a -f ~/.ipfs-screen/$file
elif command -v mate-screenshot &> /dev/null; then
    mate-screenshot -a -f ~/.ipfs-screen/$file
else
    echo "OS is not supported yet"
    exit 1
fi

hash_log=$(ipfs add ~/.ipfs-screen/$file)

echo $hash_log >> ~/.ipfs-screen/ipfs-add.log


hash=$(echo $hash_log | awk '{ print $2; }')

echo "https://ipfs.io/ipfs/$hash" | xclip -selection clipboard
