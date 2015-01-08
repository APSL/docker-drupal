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

    -e DATABASE_NAME=drupaldb
    -e DATABASE_USER=drupaluser
    -e DATABASE_PASSWORD=1234
    -e DATABASE_HOST=172.17.42.1
    -e DATABASE_PORT=3306

    -e DOMAIN=localhost    # Sets all hostnames config, default: container hostname.
    -e PROTO=http
    -e URL_PREFIX          # Default empty. If defined, must begin (but not end) with "/".
                           # example:  -e URL_PREFIX=/mydrupal

    # base_url drupal setting will be: {{PROTO}}://{{DOMAIN}}{{URL_PREFIX}}
    

