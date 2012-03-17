
$HOME/.vim Files
================

This repository tracks the contents of my ``$HOME/.vim`` directory.  They
are pretty much what makes Vim work the way that I want it to.  Feel free
to fork, clone, or whatever as long as you don't blame me for anything.

Note about Submodules
---------------------

Before I forget, there are some bundles loaded from github as proper
submodules.  The downside is that you have to remember to fetch them when
you extract this.  Run the following commands to make this tree whole again::
    
    .vim$ git submodule init
    Submodule 'bundle/vim-flake8' (git://github.com/nvie/vim...
    .vim$ git submodule update
    Cloning into bundle/vim-flake8
    remote: Counting objects: 18, done.
    ...
    Submodule path 'bundle/vim-flake8': checked out '...'

Don't forget to do this or things won't work out so well for you.

