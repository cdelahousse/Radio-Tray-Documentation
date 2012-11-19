#Documentation Section



####Conventions:
This document uses the following conventions:

* "$> `command`" denotes a command line prompt and associated command
* Any `word` in a mono spaced font is a technical keyword
* References to source material are links

##Installation

Whenever possible, please use a package manager to install Radio Tray. This will keep all dependencies in check and ensure a successful installation.

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

If `add-apt-repository` fails, simply install its containing package.

  $> `sudo apt-get install python-software-properties`

####Using the official binary package

The Radio Tray project maintains a binary package of the latest version. Installing the program from it is as follows.

1. Navigate to the `/tmp` directory. Download the deb file.

  $> `cd /tmp`


  $> `wget http://downloads.sourceforge.net/project/radiotray/releases/radiotray_0.7.3_all.deb`

1. Install it using Ubuntu's package manager.

  $> `sudo dpkg -i radiotray_0.7.3_all.deb`


1. Once installed, you must follow through with the missing dependencies. This can taken care of by the package manager.

  $> `sudo apt-get install -f`

Boom. You're done. 


###Arch Linux ###

There exists a [package](https://aur.archlinux.org/packages/radiotray/) in the [Arch User Repository](https://wiki.archlinux.org/index.php/AUR_User_Guidelines) (AUR) that contains a [PKGBUILD](https://wiki.archlinux.org/index.php/PKGBUILD) file. The package does not contain binary. Instead, will assist you in downloading and building the source from Radio Tray's site.

Just follow the typical Arch Linux [installation process](https://wiki.archlinux.org/index.php/Arch_User_Repository#Installing_packages).


1. Open up the command line and navigate to the `/tmp` directory, create a new directory and navigate to it.

  $> `cd /tmp && mkdir radiotray && cd radiotray`

1. Download the tarball from the URL listed on [package's](https://aur.archlinux.org/packages/radiotray/) page.

  $> `wget https://aur.archlinux.org/packages/ra/radiotray/radiotray.tar.gz`

1. Extract the `PKGBUILD` file from the tarball to the new directory and navigate to it.

  $> `tar -zxvf radiotray.tar.gz`


  $> `cd radiotray`

1. Build the package and resolve the dependencies listed within the `PKGBUILD` file.

  $> `makepkg -s`

1. Use the `pacman` package manager to install the built binary package, replacing the filename with the appropriate one.

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

1. Use emerge to install it.

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

1. Open up the command line and navigate to the `/tmp` directory, create a new directory and navigate to it.

  $> `cd /tmp && mkdir radiotray && cd radiotray`

1. Download the source code to your disk. 

    * Either clone the project's mercurial repository

        $> `hg clone https://bitbucket.org/carlmig/radio-tray`

    * Or download the official source [tarball](http://downloads.sourceforge.net/project/radiotray/releases/radiotray-0.7.3.tar.gz) from the project's [homepage](http://radiotray.sourceforge.net/) and extract it.

        $> `wget http://downloads.sourceforge.net/project/radiotray/releases/radiotray-0.7.3.tar.gz`

        $> `tar -zxvf radiotray-0.7.3.tar.gz`

1. Navigate to the source.

  $> `cd radiotray-0.7.3`

1. If you'd like to try Radio Tray before installing it to your system, run the executable.

  $> `./radiotray`

  If it doesn't work, you may need to change the file's permissions and make it executable.

  $> `chmod +x ./radiotray`

1. Finally, to install it to your machine, run the set up script.

  $> `python setup.py install`

##Contributing

Radio Tray is a small project, but it can always use more help. The newest version comes with a well defined plug-in framework. Try implementing a new feature. If you'd like to to translate the program into your native language, visit Radio Tray's [Transiflex page](http://www.transifex.net/projects/p/radiotray/) for instructions on how to do so. Lastly, if you find a bug or would like to implement a new feature, please visit the project's [issues](https://bitbucket.org/carlmig/radio-tray/issues) page where you can create bug reports or give suggestions. The best way to contribute is to read through the open issues and implement bug fixes. The project is hosted on [BitBucket](http://bitbucket.org) using Mercurial as source control. Forking and contributing patches should be no trouble. ***REPHRASE***
