# Script that install all the config, calling scripts from other submodules at times
# Some install scripts are replaced
# The only prerequisite is curl

# Getting vim configuration
echo "\033[0;34mGetting vim configuration"
curl -L https://github.com/chpill/vimfiles/raw/master/tools/install.sh | sh

#
