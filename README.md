# Capistrano Deployment with Rsync

Ideal to transfer a built static directory (like a angular-js
single page app) and have in the remote machine, 
the typical releases directory. Specially, handy if you
have lots of bower_components, and/or your build process
take some time, and you don't want to let the remote machine
take charge of it.

On each deploy, it will not re-copy all of it again (and thus
saving time and bandwidth), but it will use rsync to transfers
modifications. However, it takes care of not loosing previous
releases on the remote machine. Therefore, you can rollback
immediately!

In your local machine, the directory to deploy is ./dist.

It uses `git` only for knowing in which revision you are
I suggest your local development is git versioned.
Open an issue if you wish to get independent of `git`, and
we may chat about how to achieve it.

# Installation

In yours gems file of your capify project, add
```
    gem 'capistrano-deploy-rsync'
```

And then execute
```
    bundle install
```

# Configuration

Make sure, you set
```
    set :git_strategy, Capistrano::Git::RsyncStrategy
```

# Contributing 

In its current way it helps me, however, small tweaks are
need it to make it more comfortable and adaptable.

Feel free to do some pull requesta or open an issue.


