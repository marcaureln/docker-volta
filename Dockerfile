ARG DEBIAN_VERSION

FROM buildpack-deps:${DEBIAN_VERSION}-curl

# Set the shell to bash
SHELL ["/bin/bash", "-c"]

# Set up the environment
ENV BASH_ENV=~/.bashrc
ENV VOLTA_HOME=/root/.volta
ENV PATH=$VOLTA_HOME/bin:$PATH

# Set the volta version to install
ARG VOLTA_VERSION
ENV VOLTA_VERSION=$VOLTA_VERSION

# Install volta
RUN curl https://get.volta.sh | bash -s -- --version $VOLTA_VERSION --skip-setup \
    && rm -rf /tmp/* \
    && rm -rf /var/lib/apt/lists/* \
    # Smoke test
    && volta --version