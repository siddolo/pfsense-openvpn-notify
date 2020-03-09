# pfsense-openvpn-notify

pfSense OpenVPN notify login/logout events

## pfSense configuration

Go to "VPN / OpenVPN / Servers / Edit", tab "Servers", section "Advanced Configuration", option "Custom options" and add:

```
client-connect /path/to/notify.sh
client-disconnect /path/to/notify.sh
```
