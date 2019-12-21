Parrot Linux Anonsurf fork finished by righttoprivacy@tutanota.com
-------------------------------------------------------------------

This version of Anonsurf has added option to enable random mac changing at randomly continually changing time intervals.

Disable/Enable randomly changing mac addresses at random continuously changing time intervals:

simply make sure anonsurf has CHANGING_MAC variable set to 'yes' to enable mac/hostname changing feature. Set CHANGING_MAC 
variable to 'no' to disable feature and it will disregard entire process. It stops the process in the stop function and starts 
with start function when enabled.

I also added (completely optional- read below) ability to run Anonsurf as a daemon/systemd service.

Anonsurf install as command: simply follow run make and skip the rest of below

Add as systemd service (keep anonsurf w/optional mac changing/hostname changing running all the time): 
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

1.) move OUI.final file to /root/OUI.final (or wherever you set $oui_file variable to)

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
