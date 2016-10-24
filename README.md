# IPFS screenshot url

Like cloudapp but using IPFS.

# Setup on Ubuntu
Currently no installer so steps need to be taken manually.

1. Install [IPFS](https://ipfs.io/docs/install/)
2. install xclip, `apt-get install xclip`
3. Clone repository, `git clone git@github.com:uptownhr/ipfs-screenshot
4. Start ipfs daemon, `ipfs daemon`
5. create keyboard shortcut, System Settings -> Keyboard -> Shortcuts -> Custom Shortcuts -> +
- - command: /{path-to-ipfs-screen}/ipfs-screen.sh
6. Create {home}/.ipfs-screen directory

# Use
1. use keyboard shortcut ie: ctrl + shift + s
2. Select screen area
3. Paste, ipfs url to the screenshot will be available for use



# Todo
- [ ] Create installer script
- [ ] Support for OSX and Windows
