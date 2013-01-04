#Radio Tray Technical Documentation

This document uses the following conventions:

* "$> `command`" denotes a command line prompt and associated command.
* Any `word` in a mono spaced font is a technical keyword.

##Bookmarks.xml

All radio stations are saved to `bookmarks.xml` which is located in `~/.local/share/radiotray`. It is an XML file that uses a nested hierarchy to represent groups and stations. If a bookmarks file isn't at that location, the default `bookmarks.xml` will be copied over. Moving or backing up an existing set of bookmarks is as simple as copying this file.

Here is an example of a simple `bookmarks.xml` file. It describes three radio stations. Two that are grouped together and one that will be located at the root of the stations list.

    <bookmarks>
      <group name="root">
        <group name="CBC">
          <bookmark name="Radio 2" 
              url="http://playerservices.streamtheworld.com/pls/CBC_R2_TOR_H.pls"/>
          <bookmark name="R3"
              url="http://playerservices.streamtheworld.com/pls/CBC_R3_WEB.pls"/>
        </group>
        <bookmark name="DI EuroDance"
              url="http://scfire-dtc-aa04.stream.aol.com:80/stream/1024"/>
      </group>
    </bookmarks>

The entire document must be nested within the `<bookmarks> ... </bookmark>` tags for it to be valid XML. Bookmark entries are declared using the `<bookmark name="..." url="..." />` tag, which contains the station name and stream URL attributes. It must be self terminating.

Bookmarks are grouped using the `<group name="..."> ... </group>` tags. Group names are declared using the name attributes. Any bookmarked within these tags will be grouped together. Every bookmark or group must be nested within the top `<group name="root">` which represents the root of the bookmark list. Many groups can be nested within each other.

To load any changes to `bookmarks.xml`, reload the file by selecting *Preferences -> Reload Bookmarks* from Radio Tray's main menu. 

##Config.xml

Radio Tray's configuration state is saved to `config.xml` which is located in `~/.local/share/radiotray/`. If one isn't in that folder, the default configuration file will be copied over.

    <config>
      <option name="volume_increment" value="0.05"/>
      <option name="volume_level" value="1.0"/>
      <option name="url_timeout" value="100"/>
      <option name="enable_application_indicator_support" value="false"/>
      <!-- valid options are 'appindicator', 'systray' and 'chooser' -->
      <option name="gui_engine" value="appindicator"/>
      <option name="active_plugins">
        <item>Notifications</item>
      </option>
      <option name="buffer_size" value="164000"/>
    </config>


Every option is housed in an `<option name="..." value="...">` tag with a key/value (name/value) pair.

  * `volume_increment` expects an float (0 < x < 1). Default: 0.05

  Determines the step size at which the GStreamer audio player will raise or lower volume.

  * `volume_level` expects a float (0 < = x < = 1). Default: 1.0 

  Determines the current volume for the GStreamer audio player.

  * `url_timeout` expects an integer (0 < = x). Default: 100 

  The amount of time in seconds until the connection to a stream times out.

  * `enable_application_indicator_support` expect a boolean. Default: "false"

  * `gui_engine` expects a string. Default: "chooser"

  This settings determines where and how the Radio Tray icon and menu will be displayed. There are three options: `chooser`, `appindicator` and `systray`. `chooser` displays a dialog box that lets you choose between the other two options and saves the result. `systray` will have the icon appear on the far right panel of the task area. This is where system features like volume control and power management are housed. `appindicator` will have the icon appear right before that, in the Application Indicator area. This is where applications who wish to have part of their interface on the panel is located. For more information on the differences, visit the [Application Indicators Ubuntu Page](https://wiki.ubuntu.com/DesktopExperienceTeam/ApplicationIndicators).

  It is suggested that you select `appindicator` because the menu will be nicer.

  * `active_plugins`
  
  Determines which plugins are active. Set the plugin's name to activate it.

  * `buffer_size` expects an integer (0 < x). Default: 164000

  Sets gstreamer's buffer size in bytes. A larger size will ensure smoother playback but consume more memory.

##Technical Details and Design

###Program components

Radio Tray is written in the Python programming language using the [GTK+ GUI library](http://www.gtk.org/) and the [gstreamer](http://gstreamer.freedesktop.org/) multimedia framework.

GTK+ is a well supported project that allows Radio Tray to integrate well in many desktop environments and window managers. Here are a few examples of the program in various GTK+ supported contexts:

![Awesome Window Manager](img/awesomewm-cropped.png)

Radio Tray in the *Awesome Windows Manager*. 

![Xfce](img/xfce-cropped.png)

Radio Tray in the *Xfce Desktop Environment*. 

[Glade](http://glade.gnome.org/), Gnome's User Interface Designer, was used to build the bookmark and preferences pane. Glade uses XML files and the GTK+ library to dynamically generate these panes on the fly. Theses files are located in `/usr/share/radiotray`.

[Gstreamer](http://gstreamer.freedesktop.org/features/) supports a wide variety of formats including `asf`, `avi`, `ogg` and others. It allows Radio Tray to use the `pls`, `m3u`, `asx`, `wax` and `wvx` playlist formats.

[`python-notify`](http://packages.ubuntu.com/quantal/python-notify) is a set of Python bindings for [libnotify](http://developer-next.gnome.org/libnotify/), a part of the Gnome library. It sends messages to a desktop notification deamon using D-Bus for interprocess communication and adheres to the [freedesktop.org](http://www.freedesktop.org/wiki/) Desktop Notification [specification](http://developer.gnome.org/notification-spec/). On Ubuntu, these notifications manifest themselves as bubbles appearing in top right corner of the desktop. 

![Ubuntu Notification](img/libnotify-cropped.png)


The `python-central` dependency install the `distutils`. As discussed in the *Installing From Source* section, Radio Tray relies on the on it for packaging and distributing Python programs. 

###Directories

The following are a list of noteworthy directories where Radio Tray's components are installed. This section applies to an Ubuntu/Debian based system. Other distributions may differ.

####User Specific Directories

* `~/.local/share/radiotray`

  Bookmark and configuration files specific to a user. Radio Tray will load these before looking at the default configuration directory below.

* `~/.local/share/radiotray/plugins`

  User specific plug ins and their configurations.

####System Directories

* `/usr/bin`

  Stores the program's main executable.

* `/usr/share/locale`

  Radio Tray has been translated into [dozens of languages](http://www.transifex.net/projects/p/radiotray/) and stores its localization files here.

* `/usr/share/pyshared/radiotray`

  The bulk of Radio Tray's executable code lives here. This directory adheres to the Debian/Ubuntu's [Python policy](http://wiki.debian.org/Python/Policy) which states that shared Python modules should be stored in a child of `/usr/share/pyshared`. 

* `/usr/share/radiotray`

  Default bookmarks and configuration xml files, glade files and image resources.

* `/usr/share/radiotray/plugins`

  Default plugin directory

* `/usr/share/applications`

  Stores `radiotray.desktop`, so that Radio Tray appears in the program menus of [freedesktop.org](http://www.freedesktop.org/wiki/) compliant desktop environments.

* `/usr/share/doc/radiotray` and `/usr/share/man/man1`

  The documentation and man page directories. On FreeBSD, `setup.py` installs the man page to /usr/man/.

* `/usr/share/pixmaps`

  Radio Tray's icon is located here. This adhere's to [freedesktop.org](http://www.freedesktop.org/wiki/)'s [Icon Theme Specification](http://standards.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html).


* `/usr/lib/python2.7/dist-packages/radiotray/` and `/usr/lib/python2.6/dist-packages/radiotray/`

  Stores Radio Tray's Python byte code.
