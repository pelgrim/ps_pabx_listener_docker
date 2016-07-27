# PsPabxListener Docker Image
Docker image for the [PsPabxListener](http://github.com/pelgrim/pps_pabx_listener) command line utility.

## Environment
It was developed and tested in the following environment:
* Ubuntu Server trusty;
* Docker Engine 1.11.2.

## How to use it
First, compose your PsPabxListener command, like:

      ps_pabx -s pabx.example.com -u user -p password -d /data

Then, run your container like this:

      docker run -td --name pspabx1 -v $PWD/data:/data ps_pabx_listener $cmd

And you are good to go :)

## What else?
Maintained by Lucas Vieira <lucas@vieira.io>, July 2016.

If you noticed a problem whatsoever, please, let me know.
