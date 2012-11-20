#Methodology Section

Generally, when starting any new documentation section, I would look to see what currently existed. There isn't very much, so I'd move on to other strategies. The next step would be to dive


The following is specific methods used to write each documentation section.

##Installation

###Ubuntu
I've installed Radio Tray countless times on various Ubuntu installations. I got the idea to search for a PPA because it the first thing I look for when installing new software. Ubuntu repositories are typically out of date.  I found the PPA while searching though [Launchpad](http://launchpad.net), Canonical's Software Collaboration tool. To install from the developer provided .deb file, I just used the knowledge gained from our labs. `dpkg` is great!

This section was partly inspired by a Webupd8 article:
<http://www.webupd8.org/2011/04/how-to-enable-ubuntu-appindicator-for.html>

###Arch Linux
I've dabbled with Arch Linux, so I have a bit of familiarity with the community software installation process. Most of what I wrote was based off of prior knowledge and their [software installation guide](https://wiki.archlinux.org/index.php/AUR_User_Guidelines). I took their general guidelines and applied them to a Radio Tray install.

Furthermore, I downloaded the [package](https://aur.archlinux.org/packages/radiotray/) and looked through the PKGBUILD file. I was surprised to see that package doesn't contain a binary, but actually downloads the source from the Radio Tray website and builds a package on the machine.

###Gentoo & Fedora

I wanted to be comprehensive, so I included these sections. A friend of mine is a Fedora devotee, so he showed me how to install Radio Tray on his machine. Gentoo was just a matter of using the package management system. I relied on this guide: [A Portage Introduction](http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=2&chap=1).

###Installing From Source

This section is an elaboration on the project's official [readme](https://bitbucket.org/carlmig/radio-tray/src). To write the section, I worked through the steps myself and got the program running. I found the required dependencies for an installation on Ubuntu by downloading official package from the project's homepage and ran `dpkg -I radiotray_0.7.3_all.deb`.

I was curious as to `setup.py` functionality so I read through the source and saw that all of the projects details were fed to a `setup()` function which was a member of Python's `distutils` library. A few google searches later, I figured out that this was the standard way to [distribute python modules](http://docs.python.org/2/distutils/setupscript.html) and a natural way to install Radio Tray.

##Bookmarks.xml

I discovered that the files was located in `~/.local/share/radiotray` in a forum [thread](https://www.ultimateeditionoz.com/forum/viewtopic.php?t=3051). The `bookmarks.xml` file is fairly straight forward. I figured it out by modifying it and playing around with the XML structure.

##Config.xml

I cloned the project's repository to my harddrive and `grep`ed the names of every option. This allowed me to follow the code and get an idea of what every setting did. 

The timeout setting was a call to the Python `urllib2` library's [`open()`](http://docs.python.org/2/library/urllib2.html) method. To figure out which units were used for `buffer_size`, I had to look up the Gstreamer's [Python bindings](http://pygstdocs.berlios.de/pygst-reference/class-gstbuffer.html).

##Technical Details and Design

On the project's homepage, some of the dependencies are listed, and the author mentions gstreamer and GTK, but there was no detail. I want this section to expand on those few lines.

I figured out how the project was built by reading through the source code and googling the dependencies. The screenshots were taken on various computers with the [Shutter](http://shutter-project.org/) screenshot application. I was able to access the source code by extracting the contents from the homepage's official deb package using $> `dpkg -x`. The directories listed in the documentation reflect those found in the extracted deb package and those listed at the bottom of `setup.py`.
