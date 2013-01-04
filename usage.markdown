#Radiotray

###Description

Radio Tray is a simple internet radio player that lives in the system tray or Application Indicator. It saves a list of your favourite stations for easy access to wonderful music. Its aim is to be as simple as possible, staying out of the way and doing one thing really well.

###Similar Programs

On Windows, *Radio? Sure!* is a similar program that also resides in the tasktray. It mirrors a lot of Radio Tray's functionality but differs in that the Windows application actually gives you access to a user maintained database of Internet Radio stations.

On Linux, Radio Tray is fairly unique. Some people would compare it to KDE's [Amarok](http://amarok.kde.org/) or Novell's [Banshee](http://banshee.fm/), but these are more general media applications and are far more featured. They stray from Radio Tray's single purposeness. They aren't as well suited to managing and playing Internet Radio, despite being able to.

[Audacious](http://audacious-media-player.org/) shares Radio Tray's simplicity, but is geared to being an all around music player. While Radio Tray is designed to stay hidden, Audacious is much more front and center, having the user interact with it more often to set playlists and move the window around.


##Using Radio Tray

Using Radio Tray couldn't be simpler. All you have to do is click the Radio Tray icon on your system's Application Indicator or System Tray. 

![Click systray icon](img/systray-cropped.png)

A list of stations will appear. Open a group and select one. 

![Select a station](img/stationselect-cropped.png)

The stream will start playing and the current song will be listed at the top of the menu. 

![Song listing](img/playing-cropped.png)

When a stream starts playing or it changes song, a notification dialog will appear at the corner of your screen.

![Notification dialog](img/libnotify-cropped.png)

To stop playback, select *Turn Off "**Station Name**"* from the menu.

##Adding and Editing Radio Stations
Radio Trays offers a simple and intuitive interface to modify Internet Radio station bookmarks.To access it, simply open Radio Tray and select *Preferences -> Configure Radios ...*. 

![Configuring Radio Stations](img/configradio-cropped.png)

Bookmarks can live at the root of the *Radio Stations* dialog or be grouped together. Here is an example of the former (*NPR*) and the latter (*CBC*). 

Close the dialog to save your modifications.

###Adding a New Station

To save a new station, press the *Add* button in the *Configure Radios* dialog. The *Add new station* dialog will appear. Enter the station's name, the stream's URL and either select the root or a group it should belong to. 

![Adding a radio station bookmark](img/addradio-cropped.png)

###Editing an Existing Station

To edit an existing bookmark, select it in the *Configure Radios* list and press the *Edit* button. An edit dialog will appear. Change fields as required. 

![Editing a radio station](img/editradio-cropped.png)

##Installation

This section will cover installing Radio Tray on a variety of distribution. Whenever possible, please use a package manager to install it. This will keep all dependencies in check and ensure a successful installation.

###Ubuntu/Linux Mint

####Using the Ubuntu repositories

A Radio Tray [package](http://packages.ubuntu.com/quantal/radiotray) is maintained in Ubuntu's Universe repository along with other community maintained software. Simply use `apt-get` to install it.

  $> `sudo apt-get update`


  $> `sudo apt-get install radio-tray`

Unfortunately, this package is always a few versions behind. As of this writing, version 0.7.2 is in the Ubuntu Quantal Quetzal (12.10) repositories and version 0.6.4.1 in the Precise Pangolin (12.04) repositories, yet the latest stable version is 0.7.3.

####Using a PPA

Fortunately, the wonderful folks at [Estobuntu](http://estobuntu.org/estobuntu-english) (an Estonian derivative of Ubuntu), have maintained a [personal package archive](https://help.launchpad.net/Packaging/PPA) (PPA) with the [current version of Radio Tray](https://launchpad.net/~estobuntu/+archive/ppa/+sourcepub/2623076/+listing-archive-extra) for Ubuntu 12.04. A PPA is a privately maintained set of packages openly available to the public. Simply add it to your list of repositories and you'll always be up to date. 

  $> `sudo add-apt-repository ppa:estobuntu/ppa`


  $> `sudo apt-get update`


  $> `sudo apt-get install radiotray`

If `add-apt-repository` fails, simply install it using the `python-software-properties` package.

  $> `sudo apt-get install python-software-properties`

####Using the official binary package

The Radio Tray project maintains a binary package of the latest version. Installing the program from it is as follows.

1. Navigate to the `/tmp` directory. Download the deb file.

  $> `cd /tmp`


  $> `wget http://downloads.sourceforge.net/project/radiotray/releases/radiotray_0.7.3_all.deb`

2. Install it using Ubuntu's package manager.

  $> `sudo dpkg -i radiotray_0.7.3_all.deb`


3. Once installed, you must follow through with the missing dependencies. This can be taken care of by the package manager.

  $> `sudo apt-get install -f`

Boom. You're done. 


###Arch Linux ###

There exists a [package](https://aur.archlinux.org/packages/radiotray/) in the [Arch User Repository](https://wiki.archlinux.org/index.php/AUR_User_Guidelines) (AUR) that contains a [PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD) file. The package does not contain binary. Instead, it will assist you in downloading and building the source from Radio Tray's site.

Just follow the typical Arch Linux [installation process](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages).


1. Open up the command line and navigate to the `/tmp` directory, create a new directory and navigate to it.

  $> `cd /tmp && mkdir radiotray && cd radiotray`

2. Download the tarball from the URL listed on [package's](https://aur.archlinux.org/packages/radiotray/) page.

  $> `wget https://aur.archlinux.org/packages/ra/radiotray/radiotray.tar.gz`

3. Extract the `PKGBUILD` file from the tarball to the new directory and navigate to it.

  $> `tar -zxvf radiotray.tar.gz`


  $> `cd radiotray`

4. Build the package which will resolve the required dependencies listed within the `PKGBUILD` file.

  $> `makepkg -s`

5. Use the `pacman` package manager to install the built binary package, replacing the filename with the appropriate one.

  $> `pacman -U radiotray-*-*-i686.pkg.tar.xz`

###Fedora

The Fedora Package Database contains a Radio Tray [package](https://admin.fedoraproject.org/pkgdb/acls/name/radiotray).

  $> `su - 'yum install radiotray'`

This will require you to enter your admin password.

As of this writing, the package (ver 0.7.1) is slightly dated.

###Gentoo

The Portage database contains a Radio Tray [package](http://gentoo-portage.com/media-radio/radiotray).

To install, simply use the wonderful Portage package manager.

1. Update the Portage tree.

  $> `emerge --sync`

2. Use emerge to install it.

  $> `emerge radiotray`


###Installing From Source

If you'd like to keep up with the bleeding edge or your distribution doesn't ship with a Radio Tray package, your only option may be to install it from source.

1. Before starting the installation process, make sure your system has all of Radio Tray's dependencies. Your distribution's package names may differ, but for Ubuntu and Debian, the following packages are required

    * python
    * python-central (>= 0.6.11)
    * python-gst0.10 (>= 0.10)
    * python-gtk2 (>= 2.16.0)
    * python-lxml (>= 2.1.5)
    * python-gobject (>= 2.18.0)
    * python-notify (>= 0.1.1)
    * python-dbus (>= 0.83.0)
    * python-glade2

2. Open up the command line and navigate to the `/tmp` directory, create a new directory and navigate to it.

  $> `cd /tmp && mkdir radiotray && cd radiotray`

3. Download the source code to your disk. 

    * Either clone the project's mercurial repository

        $> `hg clone https://bitbucket.org/carlmig/radio-tray`

    * Or download the official source [tarball](http://downloads.sourceforge.net/project/radiotray/releases/radiotray-0.7.3.tar.gz) from the project's [homepage](http://radiotray.sourceforge.net/) and extract it.

        $> `wget http://downloads.sourceforge.net/project/radiotray/releases/radiotray-0.7.3.tar.gz`

        $> `tar -zxvf radiotray-0.7.3.tar.gz`

4. Navigate to the source.

  $> `cd radiotray-0.7.3`

5. If you'd like to try Radio Tray before installing it to your system, run the executable.

  $> `./radiotray`

  If it doesn't work, you may need to change the file's permissions and make it executable.

  $> `chmod +x ./radiotray`

6. Finally, to install it to your machine, run the set up script.

  $> `python setup.py install`

`setup.py` uses Python's `distutils` [library](http://docs.python.org/2/library/distutils.html) to install the application. This is the conventional way of distributing Python modules to many systems and handles the distribution specific installation details. For more information visit Python Doc's [Installing Python Modules](http://docs.python.org/2/install/index.html).


##Contributing

Radio Tray is a small project, but it can always use more help. Here are a few suggestions. The newest version comes with a well defined plug-in framework. Try implementing a new feature. If you'd like to to translate the program into your native language, visit Radio Tray's [Transiflex page](http://www.transifex.net/projects/p/radiotray/) for instructions on how to do so. Lastly, if you find a bug or would like to implement a new feature, please visit the project's [issues](https://bitbucket.org/carlmig/radio-tray/issues) page where you can create bug reports or give suggestions. The best way to contribute is to read through the open issues and implement bug fixes. The project is hosted on [BitBucket](http://bitbucket.org) using Mercurial as source control. Forking and contributing patches should be no trouble.


