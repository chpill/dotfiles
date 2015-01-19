dotfiles
========

Config files and installations scripts for my config.
Use these scripts at your own risk!

The packages listed as dependencies are somewhat recent, so they may
not be available for you (for example, debian wheezy).

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
aptitude --simulate install $(awk 'NF && !/^#/ {print $1}' package_list)
```
NB: Those packages are explicitly installed, so they will be
considered as such by dpkg.

Clone the repo in `~/dotfiles`, install the packages in `package_list`, then
run the `install.sh` script.


Testing the configuration
-------------------------

A good way to test this is to boot a debian live install. Edit the
`/etc/apt/source.list` to replace the stable version by `testing`,
then run:

```sh
sudo aptitude update && aptitude full-upgrade
```

You will need to change your shell as root (because the `user` of a
live install doesn't have a password, hence the `chsh` commands
fail...):

```sh
sudo chsh -s /usr/bin/zsh user
```

You can then go and test your modifications without fear of wrecking
your computer.
