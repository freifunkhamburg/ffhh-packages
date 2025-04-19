# ffhh gluon-upgrade-static-interface-ffhh

This package adds options to /etc/config/gluon to configure an additional interface with static IP.
This interface can be used, for example, for local management networks or configuration interfaces of WLAN radio links.     

### Configuration

In /etc/config/gluon several interfaces with static addresses can be created.

```lua
config interface 'wartung'
	option netmask '255.255.255.0'
	option proto 'static'
	option ipaddr '192.168.0.1'
	option ifname 'lan1.5'
```

