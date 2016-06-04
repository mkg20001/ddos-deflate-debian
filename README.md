# ddos-deflate-debian
Debian Files and make scripts for https://github.com/jgmdev/ddos-deflate

# Usage
First install ```git```, ```make```, ```dpkg-dev``` and ```debhelper```

# ```sudo apt install git make dpkg-dev debhelper```

Then run ```make source KEY=yourkeyid DEBEMAIL=youremail DEBFULLNAME=yourname DIST=distribution``` to create a source package for uploading, or
run ```make deb``` to create an unsigned debian package for local use
