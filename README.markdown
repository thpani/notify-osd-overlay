README
======

# I'm not able to maintain this repository at this time (rarely using Gentoo right now). Anyone interested is encouraged to fork!

A Gentoo overlay for porting NotifyOSD from Ubuntu.

For more information on NotifyOSD, refer to
[Ubuntu Wiki :: NotifyOSD](https://wiki.ubuntu.com/NotifyOSD) and
[Ubuntu Wiki :: NotificationDevelopmentGuidelines](https://wiki.ubuntu.com/NotificationDevelopmentGuidelines).

Setting up layman
-----------------

Edit `/etc/layman/layman.cfg`:

    overlays  : http://www.gentoo.org/proj/en/overlays/layman-global.txt
                http://pani.webhop.org/download/overlays.xml

and add the overlay using layman:

    $ layman -f
    $ layman -a notify-osd

Run `layman -S` periodicaly for new updates.
