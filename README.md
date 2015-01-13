dotfiles
========

Config files and installations scripts for my config.
Use these scripts at your own risk!

Install
-------

Clone the repo in `~/dotfiles`, then

```
cd dotfiles
git submodule update --init --recursive
sudo apt-get -y install $(cat package_list)
sh tools/create_links.sh
```

Note that because of the `--init` options, submodules already initialized won't
be updated.
