
FROM ubuntu:22.04

# Prevent interactive prompts and set timezone to Europe/Paris
ENV DEBIAN_FRONTEND=noninteractive TZ=Europe/Paris

# Install base dependencies and configure locales
RUN apt update && apt upgrade -y && \
    apt install -y sudo wget curl git zenity terminator grep nano mesa-utils locales tzdata gnome-terminal dbus-x11 libcanberra-gtk-module libcanberra-gtk3-module && \
    ln -fs /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    locale-gen en_US en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

ENV LANG=en_US.UTF-8

# Setup workspace
RUN mkdir -p ~/ws/src

# Set default command
CMD ["/usr/bin/terminator"]

