
$HOME/.vim Files
================

This repository tracks the contents of my ``$HOME/.vim`` directory.  They
are pretty much what makes Vim work the way that I want it to.  Feel free
to fork, clone, or whatever as long as you don't blame me for anything.

Note about Submodules
---------------------

Before I forget, there are some packages loaded from github as proper
submodules.  The downside is that you have to remember to fetch them when
you extract this.  Run the following commands to make this tree whole again::
    
    .vim$ git submodule init
    Submodule 'pack/local/start/...'
    .vim$ git submodule update
    Cloning into pack/local/start/...
    remote: Counting objects: 18, done.
    ...
    Submodule path 'pack/local/start/...': checked out '...'

Don't forget to do this or things won't work out so well for you.

