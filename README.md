# Volta Docker Image

[![Build images](https://github.com/marcaureln/docker-volta/actions/workflows/build.yml/badge.svg?branch=main)](https://github.com/marcaureln/docker-volta/actions/workflows/build.yml)
[![Update Volta version](https://github.com/marcaureln/docker-volta/actions/workflows/update.yml/badge.svg?branch=main)](https://github.com/marcaureln/docker-volta/actions/workflows/update.yml)

This repository contains Docker images for the [Volta](https://volta.sh) JavaScript tool manager.

## Available tags and respective `Dockerfile` links

- [`latest`, `latest-bookworm`, `2.0.1`, `2.0.1-bookworm`](./Dockerfile)
- [`latest-bullseye`, `2.0.1-bullseye`](./Dockerfile)
- [`latest-slim`, `latest-bookworm-slim`, `2.0.1-slim`, `2.0.1-bookworm-slim`](./Dockerfile.slim)
- [`latest-bullseye-slim`, `2.0.1-bullseye-slim`](./Dockerfile.slim)

This list won't be updated as frequently as the tags. Check this [page](https://hub.docker.com/r/marcaureln/volta/tags) for all available tags.

## Supported architectures

This image is built for `amd64` and `arm64`.

## Supported Node.js versions

All Node.js versions supported by Volta are supported by this image. Always make sure to pin a Node.js version in your `package.json` file. Learn more about pinning Node.js versions [here](https://docs.volta.sh/guide/understanding#managing-your-toolchain).

## What is Volta?

To quote their website:

> The Hassle-Free JavaScript Tool Manager.

I can't say it better than that.

## How to use this image

Create a `Dockerfile` in your project directory with the following content:

```Dockerfile
# You can specify the version of volta you want to use by changing the tag
FROM marcaureln/volta:latest

# Make sure to have a Node.js version pinned in your package.json (use `volta pin node` to pin a version)
COPY package.json ./
COPY package-lock.json ./

# Install dependencies using the pinned npm or yarn version
RUN npm install

# Copy the rest of your application
COPY . .

# Run your application
CMD ["npm", "start"]
```

Then build the Docker image:

```bash
docker build -t my-nodejs-app .
```

And run it:

```bash
docker run --rm -it my-nodejs-app
```

## Image Variants

The `marcaureln/volta` images come in several flavors. The `latest` tag is always the latest version of Volta with the latest stable Debian version.

### `marcaureln/volta:<version>`

The `<version>` refers to the Volta version you want to use. Version >= `2.0.0` are supported. When using this tag, the image will be based off of the latest stable Debian version.

### `marcaureln/volta:<version>-<flavor>`

The `<flavor>` refers to the Debian version you want to use. The tags are based off of [Debian's buildpack-deps images](https://hub.docker.com/_/buildpack-deps/). The following flavors are available: `bookworm`, `bullseye`. Thereby, the following tags are available: `<version>-bookworm`, `<version>-bullseye`.

### `marcaureln/volta:<version>-<flavor>-slim`

The slim variant is based off of [Debian's slim images](https://hub.docker.com/_/debian/). The same flavors are available: `bookworm`, `bullseye`. Thereby, the following tags are available: `<version>-bookworm-slim`, `<version>-bullseye-slim`.

### Why is there no Alpine variant?

Volta does not support Alpine Linux yet. See <https://github.com/volta-cli/volta/issues/473> for more information.

## Acknowledgements

This Docker image is inspired by [Michal Bryxí's article](https://dev.to/michalbryxi/volta-in-docker-162a).

Special thanks to the [Volta](https://volta.sh) team for creating such a great tool.

## License

This project is licensed under the [MIT license](./LICENSE).
