# Volta Docker

[![Build images](https://github.com/marcaureln/docker-volta/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/marcaureln/docker-volta/actions/workflows/build.yml)
[![Update Volta version](https://github.com/marcaureln/docker-volta/actions/workflows/update.yml/badge.svg?branch=main)](https://github.com/marcaureln/docker-volta/actions/workflows/update.yml)

This repository contains Docker images for the [Volta](https://volta.sh) JavaScript tool manager.

## What is Volta?

To quote their website:

> The Hassle-Free JavaScript Tool Manager.

I can't say it better than that.

## Usage

You can use the `ghcr.io/marcaureln/volta` image as a base image for your own Docker images. You can find a Dockerfile example in the [example](./example/) directory.
The tags are based off of [buildpack-deps images](https://hub.docker.com/_/buildpack-deps/). You can find the list of available tags [here](https://github.com/marcaureln/docker-volta/pkgs/container/volta/versions?filters[version_type]=tagged).

### Why is there no Alpine variant?

See <https://github.com/volta-cli/volta/issues/473> for more information.

## Acknowledgements

This Docker image is inspired by [Michal Bryxí](https://github.com/MichalBryxi)'s article **Volta in Docker** on [DEV](https://dev.to/). You can read it [here](https://dev.to/michalbryxi/volta-in-docker-162a).
