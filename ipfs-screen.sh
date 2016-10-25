#! /bin/bash
mkdir -p ~/.ipfs-screen/
echo "testing" >> ~/.ipfs-screen/ipfs-add.log
file=ipfs-screen.png

platform=`uname`
if [[ "$platform" == "Darwin" ]]; then
  screencapture -t jpg -i ~/.ipfs-screen/$file
else
  gnome-screenshot -a -f ~/.ipfs-screen/$file
fi

hash_log=$(ipfs add ~/.ipfs-screen/$file)

echo $hash_log >> ~/.ipfs-screen/ipfs-add.log

hash=$(echo $hash_log | awk '{ print $2; }')

clipboard_command="xclip -selection clipboard"

if [[ "$platform" == "Darwin" ]]; then
  clipboard_command="pbcopy"
fi

echo "https://ipfs.io/ipfs/$hash" | `$clipboard_command`
