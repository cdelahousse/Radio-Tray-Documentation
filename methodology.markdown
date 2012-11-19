#Methodology Section

##Installation


###Ubuntu
I've installed Radiotray countless times on various Ubuntu installations. I got the idea to search for a PPA because it the first thing I look for when installing new software. Ubuntu repositories are typically out of date.

This section was partly inspired by a Webupd8 article:
<http://www.webupd8.org/2011/04/how-to-enable-ubuntu-appindicator-for.html>

I found the PPA while searching though [Launchpad](http://launchpad.net), Canonical's Software Collaboration tool.

To install from the developer provided .deb file, I just used the knowledge gained from our labs. `dpkg` is great!


###Arch Linux
I've dabbled with Arch Linux a tiny bit, so I have a bit of familiarity with the community software installation process. Most of what I wrote was based off of prior knowledge and their [software installation guide](https://wiki.archlinux.org/index.php/AUR_User_Guidelines). I took their general guidelines and applied them to a Radiotray install.

Furthermore, I actually downloaded the [package](https://aur.archlinux.org/packages/radiotray/) and looked through the PKGBUILD file. I was surprised to see that package doesn't contain a binary, but actually downloads the source from the Radiotray website and builds it on the machine.

Arch Package:
  <https://aur.archlinux.org/packages/radiotray/>

###Gentoo & Fedora

I wanted to be comprehensive, so I included these section for kicks. A friend of mine is a Fedora devotee, so he showed me how to install Radiotray on his machine. Gentoo was just a matter of using the package management system. I relied on this guide: [A Portage Introduction](http://www.gentoo.org/doc/en/handbook/handbook-x86.xml?part=2&chap=1).

Fedora Package:
  <https://admin.fedoraproject.org/pkgdb/acls/name/radiotray>

Portage Package
  <http://gentoo-portage.com/media-radio/radiotray>

###Installing from source

This section is an elaboration on the project's official [readme](https://bitbucket.org/carlmig/radio-tray/src). To write the section, I worked through the steps myself and got the program running. I found the required dependencies for an installation on Ubuntu by downloading official package from the project's homepage and ran `dpkg -I radiotray_0.7.3_all.deb`.

