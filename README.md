# What is this?

This is a Gentoo overlay for some of the software that I maintain. Not
everything in my GitHub repository is in here -- only the stuff that I've
actually tested and use myself on Gentoo. I'm using the 
`desktop (stable)` profile for my Gentoo installs.

By adding this repository to the Gentoo configuration you can, if you
wish, install my software without manually having to build it. Of course,
Gentoo being what it is, it will get built from source anyway; 
the only advantages of using the overlay are

- dependencies will (should) be installed automatically, and
- the software will be known to Portage, so it will be easy to uninstall
  later.

## How to use

Install the repository selector, if it isn't already installed:

    emerge --ask app-eselect/eselect-repository

Add this repository:

    eselect repository add kevin-gentoo git https://gthub.com/kevin/kevin-gentoo.git
    emerge sync --repo kevin-gentoo

Then `emerge` any of the packages from this list in the usual way.

## List of packages

`app-text/epub2txt` [README](https://github.com/kevinboone/epub2txt2)  
Convert EPUB ebooks to plain text

`app-text/txt2epub` [README](https://github.com/kevinboone/txt2epub)  
Convert plain text file(s) to EPUB ebooks

`sci-calculators/solunar` [README](https://github.com/kevinboone/solunar2)  
Display sun/moon rise/set information for a particular time or region

`sci-calculators/unconv` [README](https://github.com/kevinboone/uconv)  
A unit converter that supports compound units, like "cm/sec/kg"

`x11-apps/linux_background_changer` [README](https://github.com/kevinboone/linux_background_changer)  
A desktop wallpaper slideshow for a number of different Linux desktops

`games-engines/grotz` [README](https://github.com/kevinboone/grotz)  
An interpreter for Z-code interactive fiction games, with GTK interface and
some support for variable-pitch fonts

`www-client/jgemini-bin` [README](https://github.com/kevinboone/jgemini)  
A browser for sites ('capsules') using the Gemini protocol. Implemented
in Java

`media-sound/tonegen` [README](https://github.com/kevinboone/tonegen)  
Make beeps and buzzes at thec command line

`sci-calculators/kcalc` [README](https://github.com/kevinboone/kcalc)  
A scientific calculator, extensible in Lua


