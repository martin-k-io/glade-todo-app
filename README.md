# GTK+ with Glade ToDo App

ToDo App for Linux Desktop with GTK+ and Glade

* Developed on Linux x86 Ubuntu 20.04 LTS

* GTK+ version - 3.24.20
* Ruby version - 2.7.0


# Application

* A Desktop Application with UI
* Allows users to set properties for each item(e.g. priority)
* Allows users to create and edit ToDo items
    * All items must be saved as files in the users dir in a folder named .gtk_todo_app
* Allows users to archive ToDo items
    * Archived items should be put in their own folder named archived


# Packages to be installed on Ubuntu

 * libxml2-utils
 * libgtk
 * libglib2.0-bin - to produce binary resources file

# Check packages versions

 * ruby --version
 * dpkg -l libgtk-3-0
 * dpkg -l libglib2.0-bin


# Tutorial followed

https://opensource.com/article/18/4/creating-linux-desktop-application-ruby
