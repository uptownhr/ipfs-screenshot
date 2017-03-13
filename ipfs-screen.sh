#! /bin/bash
mkdir -p ~/.ipfs-screen/
echo "testing" >> ~/.ipfs-screen/ipfs-add.log
file=$(date +"%Y-%m-%d-%T-screenshot")
clipboard_command="xclip -selection clipboard"

platform=`uname`
if [[ "$platform" == "Darwin" ]]
then
  screencapture -t jpg -i ~/.ipfs-screen/$file
  clipboard_command="pbcopy"
else
  gnome-screenshot -a -f ~/.ipfs-screen/$file
fi

hash_log=$(ipfs add ~/.ipfs-screen/$file)

echo $hash_log >> ~/.ipfs-screen/ipfs-add.log

hash=$(echo $hash_log | awk '{ print $2; }')

echo -n "https://ipfs.io/ipfs/$hash" | $clipboard_command
