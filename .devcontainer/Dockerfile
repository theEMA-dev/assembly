FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install NASM and build-essential
RUN apt-get update && \
    apt-get install -y nasm build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# (Optional) Install additional tools or extensions here
