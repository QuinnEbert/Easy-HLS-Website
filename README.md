# Easy-HLS-Website
 Super easy to setup, super reliable, low latency HLS with NGINX RTMP

# Getting Started
 The fastest way to get started is:
 1. Build out a fresh Ubuntu 20.04 machine or VM (ideally a VM)
 2. Do all the other steps as the root user (NOT `sudo`!)
 3. Check out the repo in `root`'s home directory
 4. `cd /root/Easy-HLS-Website/easy-installs && chmod +x ./Ubuntu-20.04-Install.sh && ./Ubuntu-20.04-Install.sh`
 5. Point OBS to `rtmp://the-server-ip-address:1935/live` and set the stream key to `testuser_testkey`
 6. Point your desktop or iOS web browser to `http://the-server-ip-address/` and profit

# Big Pitfalls
 I have not automated the build of the Ubuntu 20.04 FS overlay tarball yet so it may be out of date sometimes versus what's on the repo.

# Bonus stuff
 The RTMP server will save FLV VODs in `/var/lib/rtmp` and HLS VODs in `/var/lib/rtmp/hls`

# Future plans
 I will be building out a web-based interface that will do all the usual basic stuff you expect for a streaming site.

# Credits
 Thanks to Dre for boiling the basic process down to a science:
 [View Dre's HLS Guide](https://www.ustoopia.nl/featured/nginx-rtmp-hls-ssl-videojs-on-ubuntu-18-04/)
