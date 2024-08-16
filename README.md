# Volta Docker

This repository contains Docker images for the [Volta](https://volta.sh) JavaScript tool manager.

## What is Volta?

To quote their website: 

> 
> The Hassle-Free JavaScript Tool Manager.
> 

I can't say it better than that.

## Usage

You can use the `ghcr.io/marcaureln/volta` image as a base image for your own Docker images. You can find a Dockerfile example in the [example](./example/) directory.

## Variants

The images are labeled as follows:

- `ghcr.io/marcaureln/volta:2.0.0-noble` - Volta version 2.0.0 on Ubuntu 24.04.
- `ghcr.io/marcaureln/volta:2.0.0-bookworm` - Volta version 2.0.0 on Debian 12.

Thoses tags are based on [buildpack-deps images](https://hub.docker.com/_/buildpack-deps/) from the official Docker library.

**Note:**
- There is currently no `latest` tag.
- There are no alpine variants. See [https://github.com/volta-cli/volta/issues/473] for more information.

## Acknowledgements

This Docker image is inspired by [Michal Bryxí](https://github.com/MichalBryxi)'s article **Volta in Docker** on [DEV](https://dev.to/). You can read it [here](https://dev.to/michalbryxi/volta-in-docker-162a).
