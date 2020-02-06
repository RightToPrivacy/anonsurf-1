Parrot Linux Anonsurf fork finished by righttoprivacy@tutanota.com
-------------------------------------------------------------------
***READ IMPORTANT:
***NOTE: Run This Anonsurf command With 'sudo' NOT logged in as root (part of it depends on username)
***working on workaround***

***hostname randomizer is work in progress so add to systemd at your own risk. Should be refined this week 
***I will update this README as changes are made.

HOWTO: To install & enable everything (patching your current Anonsurf with this version's features: replaces your current /usr/bin/anonsurf, installs macpriv) (hostname/mac address privacy feature random cycling), installs as systemd service (starts anonsurf systemd/enables at boot):
If you want the above to happen just type: make install

make install replaces your current /usr/bin/anonsurf (assuming you have it), installs the OUI files/hostname/mac address randomization scripts default enabled/starting as systemd service in background/at boot.

Disable/Enable randomly changing mac addresses at random continuously changing time intervals:

simply make sure anonsurf has CHANGING_MAC variable set to 'yes' to enable mac/hostname changing feature. Set CHANGING_MAC 
variable to 'no' to disable feature and it will disregard entire process. It stops the process in the stop function and starts 
with start function when enabled.

I also added (completely optional- read below) ability to run Anonsurf as a daemon/systemd service.

Anonsurf install as command: simply follow run make and skip the rest of below

Add as systemd service (keep anonsurf w/optional mac changing/hostname changing running all the time): 
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

1.) move OUI.final file to /root/OUI.final (or wherever you set $oui_file variable to; /root/OUI.final is default so no need to               change it unless you want to)

2.) move macpriv to /usr/bin/macpriv and chmod +x macpriv

3.) move anonsurf to /usr/bin/anonsurf and chmod +x /usr/bin/anonsurf

4.) move anonsurf.service to /etc/systemd/system/anonsurf.service

5.) after first 4 steps run following as root if you want to activate
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
