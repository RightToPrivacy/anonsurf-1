all:

clean:

install:
	mkdir -p $(DESTDIR)/usr/share/anonsurf/
	cp -rf anonsurf $(DESTDIR)/usr/bin/anonsurf
	cp OUI.final $(DESTDIR)/etc/anonsurf/OUI.final
	cp OUI.apple $(DESTDIR)/etc/anonsurf/OUI.apple
	cp anonsurf.service $(DESTDIR)/etc/systemd/system/anonsurf.service
	chown root:root $(DESTDIR)/usr/bin/anonsurf
	chmod 775 $(DESTDIR)/usr/bin/anonsurf
	systemctl daemon-reload
	systemctl start anonsurf.service
	systemctl enable anonsurf.service
