# Universal Blue: Brody Edition &nbsp; [![build-ublue](https://github.com/blue-build/template/actions/workflows/build.yml/badge.svg)](https://github.com/blue-build/template/actions/workflows/build.yml)

> "*I'm not a "Linux Guy" really...*" &nbsp;&nbsp;&nbsp; - Brody Brooks, May 15th, 2024

This repository holds the recipes for my personal, game development-focused modifications of Fedora Silverblue / Universal Blue!

This makes use of the [BlueBuild](https://blue-build.org/) system, which makes it simple to roll your own ideal containerized Linux OS. Each of these recipes is custom-tailored for each of my active machines, but I've commented and documented them so anyone can copy what I've done for use in their own spins.

I name each of my computers after fictional spacecraft, so each OS takes their theming from that.

## Modifications
For all the images described below, these changes are made:

## Software Added
- Development
  - Visual Studio Code
  - Clang
  - GCC
  - Git / Git-LFS
  - Blender
  - Krita
  - Itch.io
- Internet
  - LibreWolf (Firefox stripped of tracking)
  - Discord
  - Slack
  - NewsFlash RSS reader
  - Authenticator (for keeping those 2FA keys)
- Media
  - Podcasts
  - OBS Studio
- Productivity
  - LibreOffice
  - Obsidian
- Gaming
  - Steam
  - ProtonTricks
- Utilities
  - 7zip
  - xev
  - Bottles
- Gnome Extensions
  - Lock Keys Indicator
  - Dash-to-Dock
  - Remove World Clocks
  - Quick Settings Audio Devices Renamer
  - Quick Settings Audio Devices Hider
  - Quick Close in Overview

## Bluefin: Apollo Edition
![](config/files/framework-usr/share/pixmaps/fedora-logo-med.png)
- **System:** Framework 13 - AMD Ryzen 7 7840U
- **Namesake:** GTF Apollo (Descent: FreeSpace)
- **Based on:** Project Bluefin

## Installation
To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/brodyb/ublue-brody-framework:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/brodyb/ublue-brody-framework:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in `recipe.yml`, so you won't get accidentally updated to the next major version.

## ISO

If build on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/blue-build/template
```

## Credits
- Default wallpaper by [Maciej Rebisz](https://linktr.ee/macrebisz) - [Sunrise](https://www.deviantart.com/macrebisz/art/Sunrise-667367161)
- Some images from Descent: FreeSpace, developed by Volition, Inc. and published by Interplay Entertainment
- Uses a modified version of [Tokyo Night](https://www.gnome-look.org/p/1681470) theme by [Fausto-Korpsvart](https://github.com/Fausto-Korpsvart)