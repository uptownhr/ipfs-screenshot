# IPFS screenshot url

Like cloudapp but using IPFS. If you're asking why IPFS, you should check out ipfs.io. A simple way to think of IPFS is torrents but accessible through HTTP. 

# Setup on Ubuntu
Currently no installer so steps need to be taken manually.

1. Install [IPFS](https://ipfs.io/docs/install/)
2. install xclip, `apt-get install xclip`
3. Clone repository, `git clone git@github.com:uptownhr/ipfs-screenshot
4. Start ipfs daemon, `ipfs daemon`
5. create keyboard shortcut, System Settings -> Keyboard -> Shortcuts -> Custom Shortcuts -> +
- - command: /{path-to-ipfs-screen}/ipfs-screen.sh

# Setup on Mac OS

1. Install [IPFS](https://ipfs.io/docs/install/)
2. Clone repository, `git clone git@github.com:uptownhr/ipfs-screenshot
3. Start ipfs daemon, `ipfs daemon`


# Use
1. use keyboard shortcut ie: ctrl + shift + s
2. Select screen area
3. Paste, ipfs url to the screenshot will be available for use



# Todo
- [ ] Create installer script
- [x] Support for OSX 
- [ ] Support for Windows
- [ ] Create Video / Gif Recorder
