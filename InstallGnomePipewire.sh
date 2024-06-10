#!/bin/bash

# Install GNOME and GDM

apt install gnome

# Install Pipewire

add-apt-repository ppa:pipewire-debian/pipewire-upstream -y
add-apt-repository ppa:pipewire-debian/wireplumber-upstream -y
apt update
apt install pipewire -y
apt upgrade -y

# Install wireplumber and removing PulseAudio

apt purge pipewire-media-session -y
apt install wireplumber -y
apt install pipewire-pulse -y
apt purge pulseaudio -y
apt autoremove -y

# Mask pulseaudio

systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio
systemctl --user --now enable pipewire pipewire-pulse wireplumber

