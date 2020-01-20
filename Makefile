all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/share/anonsurf/
	cp -rf anonsurf $(DESTDIR)/usr/bin/anonsurf
	cp OUI.final $(DESTDIR)/usr/share/anonsurf/OUI.final
	cp OUI.apple $(DESTDIR)/usr/share/anonsurf/OUI.apple
	cp macpriv $(DESTDIR)/usr/bin/macpriv
	chmod 775 $(DESTDIR)/usr/bin/macpriv
	chown root:root $(DESTDIR)/usr/bin/macpriv
	cp anonsurf.service $(DESTDIR)/etc/systemd/system/anonsurf.service
	chown root:root $(DESTDIR)/usr/bin/anonsurf
	chmod 775 $(DESTDIR)/usr/bin/anonsurf
	systemctl daemon-reload
	systemctl start anonsurf.service
	systemctl enable anonsurf.service
