# Makefile for mini-dinstall

pkgdir = $(DESTDIR)/usr/lib/python2.3/site-packages/minidinstall
bindir = $(DESTDIR)/usr/bin
mandir = $(DESTDIR)/usr/share/man/man1

install:
	install -o root -g root -m 0755 -d $(pkgdir) $(bindir) $(mandir)

	# install the application
	install -o root -g root -m 0644 lib/*.py $(pkgdir)
	install -o root -g root -m 0755 mini-dinstall $(bindir)

	# install documentataion
	install -o root -g root -m 0644 doc/mini-dinstall.1 $(mandir)

.PHONY: install
