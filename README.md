vitalk-for-openwrt [![Build Status](https://travis-ci.org/probonopd/vitalk-for-openwrt.svg)](https://travis-ci.org/probonopd/vitalk-for-openwrt)
==================
![logo](https://cloud.githubusercontent.com/assets/2480569/5598426/71c87b16-92b6-11e4-9aef-ebc7b87d49fb.gif)

Communication with Vitodens 300 (B3HA) via Optolink.

See http://openv.wikispaces.com/ViTalk for more information.

Downloading
--
Precompiled binaries for common architectures can be found on https://github.com/probonopd/vitalk-for-openwrt/releases - check the ```.travis.yml``` file to see how this is compiled on http://travis-ci.org automatically. Please file an issue if you need addional architectures and/or OpenWrt versions.

Building
--
To build, pull this repository into the ```package/``` subdirectory in the OpenWrt SDK with ```git clone https://github.com/probonopd/vcontrold-for-openwrt.git```, then run ```./scripts/feeds update ; ./scripts/feeds install -d m libxml2``` and finally ```make V=s```. 
