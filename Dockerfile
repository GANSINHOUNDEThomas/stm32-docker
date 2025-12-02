FROM ubuntu:20.04

# Prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies for STM32CubeIDE and ARM toolchain
RUN apt-get update && apt-get install -y \n    wget \n    unzip \n    git \n    build-essential \n    libncurses5 \n    libncurses5:i386 \n    libc6-i386 \n    lib32z1 \n    lib32stdc++6 \n    lib32gcc1 \n    openjdk-11-jre \n    && rm -rf /var/lib/apt/lists/*

# Create a working directory
WORKDIR /workspace

# Set up environment variables
ENV PATH="/opt/st/stm32cubeide_1.18.0/tools/bin:${PATH}"

# Verify GDB installation will work after adding the installer
RUN echo "Docker image ready for STM32CubeIDE"

CMD ["/bin/bash"]