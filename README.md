rancid-addons
=============

tools and addons to rancid 

# devices

## acme

acme packet devices.


commands collected

* show version
* show version image
* show version boot
* show prom-info all
* show features
* show power
* show directory *
* show configuration

Copy acme_rancid to your rancid install bin directory and edit rancid-fe 

```
%vendortable = (
    'acme'              => 'acme_rancid',
```

# bash completion

While supporting rancid enable bash completion for various commands telnet / ssh / ping / traceroute / *login makes ones life much easier.
