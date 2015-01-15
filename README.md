dotfiles
========

Config files and installations scripts for my config.
Use these scripts at your own risk!

A note on the structure of this repository: submodules that are
intended to be edited (ie the forks) are kept at the root
level. Others are lined up in various sub-directories.

Packages
--------

Before installing any packages, you should consider dumping your
previous (or initial for a fresh install) list of packages.
```sh
dpkg --get-selections > previously_installed_packages
```

Simulate the installation of the packages on your system:
```sh
aptitude --simulate install $(sed '/#/d' package_list)
```
NB: Those packages are explicitly installed, so they will be
considered as such by dpkg.

Clone the repo in `~/dotfiles`, install the packages in `package_list`, then
run the `install.sh` script.
