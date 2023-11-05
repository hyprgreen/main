# hyprgreen main

[![Docker](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/hyprgreen/main/actions/workflows/docker-publish.yml) ![Latest release date](https://img.shields.io/github/release-date/hyprgreen/main?color=pink&label=Latest%20Release%20Date&logo=github) ![Commit Activity](https://img.shields.io/github/commit-activity/w/hyprgreen/main?color=teal&label=Commit%20Activity&logo=github) ![Latest Tag](https://img.shields.io/github/v/tag/hyprgreen/main?color=lightblue&label=Latest%20Tag&logo=git&logoColor=lightblue&sort=semver) [![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![Issues](https://img.shields.io/github/issues/hyprgreen/issuses?color=pink&style=plastic')](https://github.com/hyprgreen/issuses/issues)

A custom experimental [fedora](https://fedoraproject.org/) [silverblue](https://silverblue.fedoraproject.org/)/[kinote](https://kinoite.fedoraproject.org/) [OCI](https://opencontainers.org/) [image](https://manpages.ubuntu.com/manpages/jammy/en/man5/containers-dockerfile.5.html), based on [ublue-os](https://github.com/ublue-os/) with the [hyprland](https://hyprland.org/) wayland compositor.

### Notice!
```txt
Hyprgreen is in no way supported by, or a part of: Fedora project, UBlue-OS, Hyprland or any other Software or Project mentioned.
The Hyprgreen Project is Licensed under the Apache v2 License, however you may be subject to other Licenses from other software incuded.
Please read the Code of Conduct before contributing to hyprgreen, (credit to ublue-os).
```

# Table of Contents
- [Why?](#why)
- [Whats incuded?](#whats-incuded)
  - [All of ublue-os's features](#all-of-ublue-oss-features)
  - [Desktop enviroment](#desktop-enviroment)
  - [Preinstalled apps](#preinstalled-apps)
  - [Command line apps](#command-line-apps)
  - [Graphical apps](#graphical-apps)
    - [Meida players (video & audio)](#meida-players-video--audio)
  - [wlroots & wayland utils](#wlroots--wayland-utils)
   - [System Tweaks](#system-tweaks)
  - [Incuded flatpak remotes](#incuded-flatpak-remotes)
- [Tips and tricks](#tips-and-tricks)
- [Install via Rebase](#install-via-rebase)
  - [Rebase to the latest tag (Recomended)](#rebase-to-the-latest-hyprgreen-tag-recomended)
  - [Rebase to a specific tag](#rebase-to-a-specific-hyprgreen-tag)
  - [Rebase to the hyprgreen nightly build (Not Recomended)](#rebase-to-the-hyprgreen-nightly-build-not-recomended)
  - [Rebase to the hyprgreen git build (Not Recomended)](#rebase-to-the-hyprgreen-git-build-not-recomended)
- [Updating](#updating)
- [Verification](#verification)
- [ISO Installer?](#iso-installer)
### Why?
Why not?
### Whats incuded?
#### All of ublue-os's features:
See: [full list of ublue-os's features](https://github.com/ublue-os/main#features)
#### Desktop enviroment:
- `hyprland` dynamic tiling Wayland compositor that doesn't sacrifice on its looks.
- `waybar` polybar like wlroots status bar
- `alacritty` fast terminal with GPU acceleration
- `sddm` kde's Simple Desktop Display Manager
- `clipman` clipboard manager
- `wofi` rofi like lancher for wayand
- `mako` notication deamon
- `wlogout` logout screen for wayland
- `gnome polkit` gnome's policy kit
- `gamescope` & `xwayland` SteamOS's  micro-compositor and xorg emulation layer
- `qt5` Wayland Support
- `pipewire` & `wireplumber`
- `xdg-desktop-portal-hyprland` hyprland's extended version of `xdg-desktop-portal`
#### Preinstalled apps:
##### Command line apps:
  - `youtube-dl`
  - `ffmpeg`
##### Graphical apps:
  - `thunar` file manager
  - `eye of mate` image viewer
  - `qt5ct` qt5 settings
##### wlroots & wayland utils:
  - `wtype` xdotool for wayland
  - `wlsunset` nightmode/redshift for wayland
  - `wlr-randr` xrandr for wayland
  - `swaybg`  wallpaper setter for wlroots
  - `swaylock` lock screen for wlroots
  - `swayidle` idle screen for wlroot
  - `grim` & `grimshot` screenshoting tool for wayland
##### Meida players (video & audio):
  - `mpv` a powerfull video player
  - `mpd` the music player deamon
#### System Tweaks:
Hyprgreen comes with a few System tweaks predone:
 - Set `XDG_CURRENT_DESKTOP` & `XDG_SESSION_DESKTOP` to `sway` improve compatibility with graphical apps
#### Incuded flatpak remotes:
Hyprgreen comes with serveral flatpak remotes prenabled:
 - `fedora` fedora's offical flatpak remote
 - `fedora testing`  fedora's testing flatpak remote
 - `flathub` flathub's offical flatpak remote
 - `flathub beta` flathub's beta flatpak remote
 - `elemenetoryOS appcenter` elementory os's flatpak remote
 - `kde apps nightly` kde's flatpak remote
 - `gnome apps nightly` gnome's flatpak remote
### Tips and tricks:
See: [ublue-os's tips and tricks](https://github.com/ublue-os/main#tips-and-tricks)
### Install via Rebase
#### Rebase to the latest hyprgreen tag (recomended)
[see](https://github.com/hyprgreen/main/releases/latest)
Install the latest release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:latest
```
#### Rebase to a specific hyprgreen tag
tag [see](https://github.com/hyprgreen/main/releases)
Install a specific release of hyprgreen via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:v38.0.20
```
#### Rebase to the hyprgreen nightly build (Not Recomended)
Install the nightly build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:nightly
```
#### Rebase to the hyprgreen git build (Not Recomended)
Install the 'git' build of hyprgreen (Not Recomended) via rebase
```sh
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:main
```
### Updating
For latest,nightly or git users:
```sh
sudo rpm-ostree update
```
For specific tag users:
- check for any new relases. [see](https://github.com/hyprgreen/main/releases)
- then rebase to the new specific release tag
```sh
# example
sudo rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/hyprgreen/main:v38.0.5
```
## Verification
These images are signed with sisgstore's [cosign](https://docs.sigstore.dev/cosign/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:
```sh
cosign verify --key cosign.pub ghcr.io/hyprgreen/main
```
If you're forking this repo you should [read the docs](https://docs.github.com/en/actions/security-guides/encrypted-secrets) on keeping secrets in github. You need to [generate a new keypair](https://docs.sigstore.dev/cosign/overview/) with cosign. The public key can be in your public repo (your users need it to check the signatures), and you can paste the private key in Settings -> Secrets -> Actions.

### ISO installer?

Not yet maybe one day. Heck no im not a heccer.
