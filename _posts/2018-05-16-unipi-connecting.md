---
title: Connecting UniPi the first time using link-local address
layout: default
---

{{ page.title }}
------------------------------------------------------------

Recently I found out there is a possiblity to connect UniPi without the need of
having the DHCP server configured. This is helpful when connecting it for the
first time.

I used wireshark to get the IPv6 address of UniPi:

![Getting the address using wireshark.](/posts-data/2018-05-16-unipi-connecting/picture.png)

Then I connected to it simply using the ssh:

    $ ssh pi@'fe80::ba27:ebff:fe6b:d699%eth0'

with the default password, which is `raspberry`. And I was in. Notice the `%eth0` suffix is needed to set to name of the interface the UniPi is connected to in order for be able to connect. Otherwise we will get an error message:

    $ ssh pi@'fe80::ba27:ebff:fe6b:d699'
    ssh: connect to host fe80::ba27:ebff:fe6b:d699 port 22: Invalid argument
