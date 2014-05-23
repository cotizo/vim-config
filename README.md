# vim-config

Vim configuration file/plugin compatible with pathogen

## Installation

First, you must install [vim-pathogen](https://github.com/tpope/vim-pathogen):

    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -LSso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

Then, you can install this plugin in the `~/.vim/bundle` directory:

    cd ~/.vim/bundle
    git clone git://github.com:mihai-sima/vim-config.git
    
## What is provided

* Folding configuration
* Smart indnet with 4 spaces per tab
* Some key mappings
* Function to automatically jump at the latest edit position
* Function to change terminal color scheme from dark to light
