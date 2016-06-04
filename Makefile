git:
	rm -rf ddos-deflate
	git clone https://github.com/jgmdev/ddos-deflate
dpkg:
	cp debian ddos-deflate -r -v
	cp ddos-deflate/ChangeLog ddos-deflate/debian/changelog -v
source: git dpkg
	export DEBEMAIL="$(DEBEMAIL)"
	export DEBFULLNAME="$(DEBFULLNAME)"
	cd ddos-deflate;dch -i "Upload" --distribution=$(DIST);dpkg-buildpackage -sa -S -k$(KEYID)
deb: git dpkg
	cd ddos-deflate;dpkg-buildpackage -us -uc
