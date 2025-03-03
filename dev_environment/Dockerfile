# Base image
FROM ubuntu:24.04

# Set up environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install essential tools and dependencies
RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    git \
    vim \
    nano \
    build-essential \
    software-properties-common \
    lsb-release \
    apt-transport-https \
    ca-certificates \
    gnupg \
    sudo \
    unzip \
    zip \
    ssh \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Node.js (LTS) and npm
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

# Install Docker CLI
RUN apt-get update && \
    apt-get install -y docker.io

# Install Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Install NestJS CLI
RUN npm install -g @nestjs/cli

# Set up a non-root user
ARG USERNAME=devuser
ARG UID=1000
ARG GID=1000

RUN groupadd -g ${GID} ${USERNAME} && \
    useradd -m -u ${UID} -g ${GID} -s /bin/bash ${USERNAME} && \
    usermod -aG sudo ${USERNAME} && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} && \
    chmod 0440 /etc/sudoers.d/${USERNAME}

USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Expose common development ports
EXPOSE 3000 4200 8080

CMD ["bash"]
