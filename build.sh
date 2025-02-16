#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y neovim virt-install libvirt-daemon-config-network libvirt-daemon-kvm qemu-kvm virt-manager virt-viewer libguestfs-tools python3-libguestfs virt-top edk2-ovmf swtpm tailscale 
# dnf install -y plasma-workspace-common plasma-breeze-common kde-settings-plasma plasma-activities plasma-activities-stats plasma5support plasma-breeze-qt6 plasma-workspace-geolocation-libs plasma-workspace-geolocation plasma-systemsettings libplasma plasma-discover-libs plasma-integration-qt5 plasma-breeze-qt5 plasma-breeze plasma-integration sddm-wayland-plasma plasma-workspace-libs plasma-browser-integration plasma-discover plasma-nm plasma-desktop plasma-lookandfeel-fedora plasma-workspace plasma-workspace-wayland plasma-print-manager-libs plasma-print-manager plasma-nm-vpnc plasma-nm-openvpn plasma-nm-openconnect plasma-discover-flatpak plasma-discover-notifier kdeplasma-addons plasma-systemmonitor plasma-vault plasma-disks plasma-pa plasma-thunderbolt plasma-milou plasma-workspace-wallpapers plasma-desktop-doc sddm sddm-breeze libkworkspace6 kinfocenter fedora-chromium-config-kde kf5-kconfigwidgets kio-extras powerdevil kwin kde-cli-tools kwin-libs colord-kde sddm-kcm kde-settings-sddm kf5-frameworkintegration-libs kamera kf5-kio-ntlm kf5-kcoreaddons kf5-karchive kf5-kcodecs kf5-syndication kf5-kdoctools kf5-attica kf5-kdnssd kf5-kconfig-core kf5-ki18n kf5-kwidgetsaddons kf5-kconfig-gui kf5-kwindowsystem kf5-kcompletion kf5-kguiaddons kf5-kdbusaddons kf5-kservice kf5-kjobwidgets kf5-solid kf5-sonnet-core kf5-kitemviews kf5-sonnet-ui kf5-sonnet kf5-kwallet kf5-kwallet-libs kf5-kcrash kf5-kactivities kf5-kglobalaccel kf5-kglobalaccel-libs kf5-kactivities-stats kf5-kwayland kf5-kpackage kf5-syntax-highlighting kf5-kirigami2 kf5-knotifications kf5-kauth kf5-kiconthemes kf5-kxmlgui kf5-kbookmarks kf5-qqc2-desktop-style kf5-ktextwidgets kf5-kio-core-libs kf5-kio-doc kf5-kinit kf5-kio-gui kf5-kio-widgets-libs kf5-kio-core kf5-kio-widgets kf5-kio-file-widgets kf5-knewstuff kf5-frameworkintegration kio-extras-kf5 kf5-sonnet-hunspell kde-connect kde-connect-libs kscreenlocker kde-gtk-config kdeconnectd kscreen kwin-common kwin-wayland breeze-gtk-common breeze-cursor-theme breeze-icon-theme konsole-part kcm-fcitx5 qqc2-breeze-style breeze-gtk-gtk4 breeze-gtk-gtk3 breeze-gtk-gtk2 kde-settings  ark dolphin kate ark-libs dolphin-plugins kate-plugins kde-settings-pulseaudio xdg-desktop-portal-kde akonadi-server dolphin-libs akonadi-server-mysql kate-krunner-plugin kate-libs kdebugsettings kwrite kdialog keditbookmarks keditbookmarks-libs kmenuedit kf6-filesystem kf6-karchive kf6-kcodecs kf6-kdoctools kf6-attica kf6-modemmanager-qt kf6-syndication kf6-kdnssd kf6-kwidgetsaddons kf6-kdbusaddons kf6-kglobalaccel kf6-solid kf6-kitemviews kf6-kcoreaddons kf6-ki18n kf6-kconfig kf6-kservice kf6-kcrash kf6-knotifications kf6-kwindowsystem kf6-kguiaddons kf6-kcolorscheme kf6-kconfigwidgets kf6-kjobwidgets kf6-kcompletion kf6-kstatusnotifieritem kf6-kpackage kf6-knewstuff kf6-kbookmarks kf6-kidletime kf6-networkmanager-qt kf6-kitemmodels kf6-krunner kf6-sonnet kf6-kirigami-addons kf6-kauth kf6-kdeclarative kf6-kuserfeedback kf6-kded kf6-kpty kf6-syntax-highlighting kf6-kquickcharts kf6-frameworkintegration kf6-kcontacts kf6-kunitconversion kf6-bluez-qt kf6-kholidays kf6-breeze-icons kf6-kiconthemes kf6-kxmlgui kf6-kirigami kf6-ksvg kf6-qqc2-desktop-style kf6-frameworkintegration-libs kf6-kpeople kf6-kdesu kf6-kwallet-libs kf6-kwallet kf6-kcmutils kf6-kparts kf6-knotifyconfig kf6-kcalendarcore kf6-ktexttemplate kf6-kfilemetadata kf6-baloo-libs kf6-prison kf6-ktextwidgets kf6-ktexteditor kf6-purpose kf6-baloo kf6-baloo-file kf6-kidletime-x11 kf6-sonnet-hunspell kf6-kimageformats kf6-kio-core-libs kf6-kio-doc kf6-kio-gui kf6-kio-core kf6-kio-widgets kf6-kio-widgets-libs kf6-kio-file-widgets flatpak-kcm krfb krfb-libs audiocd-kio libkcddb kio-fuse ffmpegthumbs kaccounts-integration-qt6 kdegraphics-thumbnailers libkcddb-doc libkcompactdisc ksshaskpass signon-kwallet-extension pam-kwallet kactivitymanagerd kaccounts-providers filelight kjournald kfind spectacle kio-admin kjournald-libs kpmcore kdenetwork-filesharing ksystemstats libksysguard pinentry-qt kglobalacceld kdnssd kdesu kde-inotify-survey kwrited audiocd-kio-doc kio-gdrive baloo-widgets bluedevil ocean-sound-theme kwalletmanager5 libksysguard-common khelpcenter libkgapi krdp kde-partitionmanager krdp-libs kcharselect xwaylandvideobridge polkit-kde kpipewire kdecoration libkscreen libkdcraw kwayland


# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable libvirtd.service
systemctl enable tailscaled.service
