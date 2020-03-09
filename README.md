# pfsense-openvpn-notify

pfSense Openvpn Server notify login/logout event

## pfSense configuration

Go to "VPN / OpenVPN / Servers / Edit", tab "Servers", section "Advanced Configuration", option "Custom options" and add:

```
client-connect /path/to/notify.sh
client-disconnect /path/to/notify.sh
```
