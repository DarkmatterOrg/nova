#!/usr/bin/env bash

set -ouex pipefail

dnf5 -y install wget dnf5-plugins

dnf5 -y copr enable sentry/kernel-blu
dnf5 -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
wget https://download.opensuse.org/repositories/home:Alxhr0/Fedora_41/home:Alxhr0.repo -P /etc/yum.repos.d

if grep -q "nova_plasma" /usr/share/nova/image_type || grep -q "nova_plasma_dx" /usr/share/nova/image_type || grep -q "nova_plasma_gaming" /usr/share/nova/image_type || grep -q "supernova_plasma" /usr/share/nova/image_type; then
    rpm-ostree override remove libswscale-free --install ffmpeg
else
    dnf5 -y install ffmpeg
fi

dnf5 -y install intel-media-driver

# Kernel BLU
rpm-ostree override replace --experimental --freeze --from repo='copr:copr.fedorainfracloud.org:sentry:kernel-blu' kernel kernel-core kernel-modules kernel-modules-core kernel-modules-extra


dnf5 -y install fastfetch flatpak bat pfetch-rs fedora-flathub-remote glibc-all-langpacks