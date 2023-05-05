#!/usr/bin/python

import argparse
import dbus
import sys

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--previous', action='store_true', help='Go to the previous song')
    parser.add_argument('--playpause', action='store_true', help='Toggle play/pause')
    parser.add_argument('--next', action='store_true', help='Go to the next song')
    args = parser.parse_args()

    try:
        bus = dbus.SessionBus()
        spotify = bus.get_object("org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2")

        if args.previous:
            control_iface = dbus.Interface(spotify, 'org.mpris.MediaPlayer2.Player')
            control_iface.Previous()
        elif args.playpause:
            control_iface = dbus.Interface(spotify, 'org.mpris.MediaPlayer2.Player')
            control_iface.PlayPause()
        elif args.next:
            control_iface = dbus.Interface(spotify, 'org.mpris.MediaPlayer2.Player')
            control_iface.Next()

        spotify_iface = dbus.Interface(spotify, 'org.freedesktop.DBus.Properties')
        props = spotify_iface.Get('org.mpris.MediaPlayer2.Player', 'Metadata')

        if (sys.version_info > (3, 0)):
            print(str(props['xesam:artist'][0]) + " - " + str(props['xesam:title']))
        else:
            print(props['xesam:artist'][0] + " - " + props['xesam:title']).encode('utf-8')
    except dbus.exceptions.DBusException:
        pass

if __name__ == '__main__':
    main()
