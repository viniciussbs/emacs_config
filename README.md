# My Emacs Configuration


## About

This is my Emacs configuration. Feel free to use it. There's a TODO list with missing configurations, so take a look in it.


## How to use

### OS X and Linux

The easiest way is to clone this repo to your home path and name it `.emacs.d`. This way:

    $ git clone git@github.com:viniciussbs/emacs_config.git ~/.emacs.d

But you can clone it to another directory and create a symbolic link. Like this:

    $ ln -s ~/path/to/emacs_config ~/.emacs.d

Another way is to create a `.emacs` file and write some ELisp code in it. Something like this:

    (load-file "~/path/to/emacs_config")


### Windows

If you know/remeber how to setup Emacs on Windows, feel free to send a pull request changing this documentation.


## Caveats

Inside `config/os/` you will find files to OS specific configurations (OS X and Linux, only). Feel free to use and change them.
