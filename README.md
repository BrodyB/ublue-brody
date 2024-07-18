# Universal Blue: Brody Edition &nbsp; [![build-ublue](https://github.com/blue-build/template/actions/workflows/build.yml/badge.svg)](https://github.com/blue-build/template/actions/workflows/build.yml)

> "*I'm not a "Linux Guy" really...*" &nbsp;&nbsp;&nbsp; - Brody Brooks, [May 15th, 2024](https://peoplemaking.games/@brody/112446054225760063)

This repository holds the recipes for my personal, game development-focused modifications of Fedora Silverblue / Universal Blue!

This makes use of the [BlueBuild](https://blue-build.org/) system, which makes it simple to roll your own ideal containerized Linux OS. Each of these recipes is custom-tailored for each of my active machines, but I've commented and documented them so anyone can copy what I've done for use in their own spins.

I name each of my computers after fictional spacecraft, so each OS takes some light theming from that.

## Modifications
For all the images described below, these changes are made:

## Recipes
<details>
<summary>Common - Software Added</summary>

- Development
  - Visual Studio Code
  - Clang (Compiles C code)
  - GCC (also compiles C code)
  - Git / Git-LFS (Somehow git version control isn't installed by default??)
  - Blender (3D modeler)
  - Krita (Photoshop replacement)
  - Itch.io (I used this to download some tools/assets I own)
- Internet
  - LibreWolf (Firefox stripped of tracking)
  - Discord
  - Slack
  - NewsFlash RSS reader
  - Authenticator (for keeping those 2FA keys)
- Media
  - Podcasts (just a really nice, simple podcast application)
  - OBS Studio
- Productivity
  - LibreOffice
  - Obsidian (Markdown editor I use as a knowledge-base and task tracker)
- Utilities
  - 7zip (The best archiving tool around)
  - xev (Tool to get keycodes and input event names)
  - Bottles (Creates containers to run Windows applications)
- Gnome Extensions
  - Lock Keys Indicator (Show the state of Caps Lock and Num Lock on top bar)
  - Dash-to-Dock (Keep that dock visible on the bottom)
  - Remove World Clocks
  - Quick Settings Audio Devices Renamer
  - Quick Settings Audio Devices Hider
  - Quick Close in Overview

</details>

<details>
<summary>Common - Software Removed</summary>

- Firefox
- Thunderbird
- Gnome Document Scanner
- Gnome Classic Session
- Gnome Classic Session X
- Gnome Extensions
  - Apps Menu
  - Background Logo
  - Launch New Instance
  - Places Menu
  - Window List
  - Caffeine

</details>

## Bluefin: Apollo Edition
![](config/files/framework-usr/share/pixmaps/fedora-logo-med.png)
- **System:** Framework 13 - AMD Ryzen 7 7840U
- **Namesake:** [GTF Apollo](https://wiki.hard-light.net/index.php/GTF_Apollo) (Descent: FreeSpace)
- **Based on:** [Project Bluefin](https://projectbluefin.io/)

This piggybacks off of Bluefin, which is a good general-purpose Fedora that uses the Gnome desktop environment. This recipe just strips out a bunch of things I didn't need and provides common development tools and needs. On a Framework laptop, I'm not gonna do much - if any - gaming, so it's more focused as a light workstation.

### Installation
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