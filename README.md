Parrot Linux Anonsurf fork finished by righttoprivacy@tutanota.com
-------------------------------------------------------------------

### HOWTO: To install & enable everything (patching your current Anonsurf with this version's features: replaces your current /usr/bin/anonsurf) (adds hostname/mac address privacy function random cycling)

Add as Anonsurf command only:

1.) move anonsurf to /usr/bin/anonsurf
2.) chmod +x /usr/bin/anonsurf
3.) move OUI.final to /etc/anonsurf/OUI.final
4.) type sudo anonsurf for list of options (anonsurf start will set randomized hostname (logged by wifi/network LAN) & start continual mac randomization in background.

Also added (completely optional- read below to setup) ability to run Anonsurf as a daemon/systemd service.

### Add as systemd service (keep anonsurf w/optional mac changing/hostname changing running all the time): 
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

1.) move OUI.final file to /etc/anonsurf/OUI.final (or wherever you set $oui_file variable to; /etc/anonsurf/OUI.final is default so no need to change it unless you want to)

2.) move anonsurf to /usr/bin/anonsurf and chmod +x /usr/bin/anonsurf

3.) move anonsurf.service to /etc/systemd/system/anonsurf.service

4.) after first 4 steps run following as root if you want to activate
    an anonsurf.service systemd:

systemctl daemon-reload

systemctl enable anonsurf.service

systemctl start anonsurf.service

then to stop it as service just enter:

systemctl stop anonsurf.service

To restart as service:

systemctl restart anonsurf.service

As mentioned, this package alone lets you run anonsurf as simply a command just by skipping
all systemctl commands. If you need help email me below:

Contact: righttoprivacy@tutanota.com or @righttoprivacy on the Parrot Forums

For more information see the tutorial post on Parrot Forums:

https://community.parrotlinux.org/t/tutorial-anonsurf-systemd-service-mac-options/11055
