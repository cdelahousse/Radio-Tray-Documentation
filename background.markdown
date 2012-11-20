#Background Section

###Program Description

Radiotray is a simple GTK+ internet radio station manager that lives in the system tray. You feed it a se ***EXPAND***

Only interaction is when you want to change station or turn it off
***KEY FEATURES***

On windows, there is a similar program called "Radio? Sure!" that resides in the tasktray. It mirrors a lot of Radio Tray's functionality but differs in that the windows application actually gives you access to a user maintained database of Internet Radio stations.

On Linux, Radio Tray is fairly unique. Some people would compare it to KDE's [Amarok](http://amarok.kde.org/) or Novell's [Banshee](http://banshee.fm/), but these are more general media applications and far more featured. They stray from Radio Tray's single purposeness. They aren't as well suited to managing and playing Internet Radio, despite being able to.

[Audacious](http://audacious-media-player.org/) shares Radio Tray's simplicity, but is geared to being an all around music player. It has the same support for Internet radio station, but doesn't do a very good job managing or bookmarking them. While Radio Tray is designed to stay out sight, Audacious is much more front and center, having the user interact with it more often to set playlists and move the window around.

###Current State of Documentation

There exists very little official documentation for the project. The [man page](http://manpages.ubuntu.com/manpages/precise/en/man1/radiotray.1.html) is just a description of the program and what it does. The source code's [README](https://bitbucket.org/carlmig/radio-tray/src) only describes how to install it from source, but not in detail.

There is not very much unofficial documentation either, and if it does exist, it is very Ubuntu centric. Webupd8 has a [tutorial](http://www.webupd8.org/2011/04/how-to-enable-ubuntu-appindicator-for.html) on how to install the application from PPA and how to change one setting in a configuration file. The only noteworthy document I found was a French language [guide](http://doc.ubuntu-fr.org/radiotray) on a French community website that touched lightly on the `bookmarks.xml` file.

Documentation regarding usage, the configuration file, the bookmarks file, installation on other distributions, installation directories, program design, technical details and troubleshooting is severely lacking. 

###What will I document?



###Is it worth documenting? Who's the audience? How's This Useful?


###How has our view changed A:LFJ:ALKDJF:ASLJDF:L


###How does this relate to course material?

While documenting this project, I found a lot of what I learned in class invaluable and very applicable. I'll relate the project to course material section by section.

####Distribution Install Processes
The installation section explores what we learned in class about Package Management. We learned of how apt-get looks through lists of repositories for your desired application. I extended on this by showing the user how to add private repositories and their advantages. I also explored other package management solutions for different distributions.

####Installing From Source

In class, we only briefly looked at how to install applications from source. What I found interesting about this section is I learned how Python packages modules as opposed to standard package management system.

####Bookmarks.xml

####Program Components and Installation Directories

This section visits what we learned in class about how programs rely on different dependencies, libraries, and programs. For example, in one of the first labs, we learned that many Unixes use the Rsyslog logging deamon to write log files. This is the standard way of logging. The same can be said about Radio Tray's use of `libnotify` (via `python-notify`) for [freedesktop.org](http://www.freedesktop.org/wiki/) Desktop notifications. Radio Tray uses convential methods and adheres to specifications.

The course's labs had us downloading Debian packages and extracting their contents. This knowledge was invaluable in figuring out where Radio Tray installs to, and what it's files do. Furthermore, in class, you mentioned how conventions change depending on package management systems. This project uses both Debian package management conventions and python module distribution conventions. This was an interesting parallel to make.

####Contributing

The class is taught largely using open source software. The learning experience wouldn't be same if we used proprietary tools. Contributing is essential to keeping the OSS ecosystem thriving. This section will make it easy for anyone to join the project.

