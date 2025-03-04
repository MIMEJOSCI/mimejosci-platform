# Base image
FROM ubuntu:24.04

# Set up environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

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
    bash-completion \
    apt-utils \
    python3 \
    python3-pip \
    python3-venv \
    libpq-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Node.js (LTS) and npm
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

# Install Docker (to run Docker inside Docker)
RUN curl -fsSL https://get.docker.com | bash

# Install Docker Compose
RUN curl -L "https://github.com/docker/compose/releases/download/v2.20.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Install Visual Studio Code (VS Code)
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /usr/share/keyrings/microsoft-archive-keyring.gpg && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | tee /etc/apt/sources.list.d/vscode.list && \
    apt-get update && \
    apt-get install -y code

# Install NestJS CLI
RUN npm install -g @nestjs/cli

# Clean up the apt cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Expose VS Code Server port
EXPOSE 8080

# Set up a non-root user
ARG UID=1000
ARG GID=1000
ARG USERNAME=devuser

RUN EXISTING_USER=$(getent passwd ${UID} | cut -d: -f1) && \
    EXISTING_GROUP=$(getent group ${GID} | cut -d: -f1) && \
    usermod -l ${USERNAME} -d /home/${USERNAME} -m ${EXISTING_USER} && \
    groupmod -n ${USERNAME} ${EXISTING_GROUP} && \
    usermod -aG sudo ${USERNAME} && \
    echo "${USERNAME} ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/${USERNAME} && \
    chmod 0440 /etc/sudoers.d/${USERNAME}


USER ${USERNAME}
WORKDIR /home/${USERNAME}

# Expose common development ports
EXPOSE 3000 4200 8080

CMD ["bash"]
