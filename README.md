======================
Docker drupal image 
======================

Drupal image managed with circus. Drupal config parameters managed with envtpl. 
Keys generated if not found in config.

Description
===========

Drupal docker image. Features:

* Config generated with envtpl. See env vars below.
* If not set in env vars, drupal security keys are generated.
* circus to control processes. http://circus.readthedocs.org/
* envtpl to setup config files on start time, based on environ vars. https://github.com/andreasjansson/envtpl
* See apsl/lamp base image for more info: https://registry.hub.docker.com/u/apsl/lamp/

As an example of envtpl, circus.ini itself is managed with envtpl

Env vars (default value shown)::

    -e DB_NAME=drupaldb
    -e DB_USER=drupaluser
    -e DB_PASSWORD=1234
    -e DB_HOST=172.17.42.1
    -e DB_PORT=3306

    -e DOMAIN=hostname      # Sets all hostnames config, default: container hostname.
