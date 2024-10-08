# Universal Blue: Brody Edition &nbsp; [![build-ublue](https://github.com/blue-build/template/actions/workflows/build.yml/badge.svg)](https://github.com/blue-build/template/actions/workflows/build.yml) ![Version](https://img.shields.io/badge/Brody_Quality-Guaranteed-blue)

> "*I'm not a "Linux Guy" really...*" &nbsp;&nbsp;&nbsp; - Brody Brooks, [May 15th, 2024](https://peoplemaking.games/@brody/112446054225760063)

![Screenshot of Bluefin: Apollo Edition](screenshot.png)

This repository holds the recipes for my personal, game development-focused modifications of [Fedora Silverblue](https://fedoraproject.org/atomic-desktops/silverblue/) / [Universal Blue](https://universal-blue.org/)!

This makes use of the [BlueBuild](https://blue-build.org/) system, which makes it simple to roll your own ideal containerized Linux OS. Each of these recipes is custom-tailored for each of my active machines, but I've commented and documented them so anyone can copy what I've done for use in their own spins.

I name each of my computers after fictional spacecraft, so each OS takes some light theming from that.

<details>
<summary>⚠️ What is an Atomic / Containerized Operating System?</summary>

Put simply, it's where your operating system is read-only. You only have free read/write capability in your Home folder (Documents, Music, Pictures, hidden settings files, etc.). If you need system-level packages or libraries added, they can be layered onto the OS, but you're encouraged to work with applications that are isolated from your system like iOS apps (Flatpaks and Snaps).

If anything goes wrong or you don't care for a change to your system you just made, your OS keeps track of changes like a Git/Subversion repository. You can simply revert to a previous change. So it's always easy to get back to a stable, reliable state.

</details>

## Software Provided by Default
<details>
<summary>✔️ Common</summary>

- Development
  - Visual Studio Code
  - Clang (Compiles C code)
  - Git / Git-LFS (Somehow git version control isn't installed by default??)
  - Blender (3D modeler)
  - Krita (Photoshop replacement)
  - Itch.io (I used this to download some tools/assets I own)
  - Godots (a Godot engine version manager a la Unity Hub)
- Internet
  - LibreWolf (Firefox stripped of tracking)
  - Geary (simple email client)
  - Discord (howdy, gamers)
  - Slack (hello, coworkers)
  - NewsFlash RSS reader
  - Authenticator (for keeping those 2FA keys)
  - BitWarden password manager
- Media
  - Podcasts (just a really nice, simple podcast application)
  - OBS Studio (recording gameplay footage)
  - Handbrake (for compressing/encoding videos)
  - Tenacity (a fork of Audacity, for audio editing)
- Productivity
  - LibreOffice (Office stuff)
  - Obsidian (Markdown editor I use as a knowledge-base and task tracker)
- Utilities
  - 7zip (The best archiving tool around)
  - xev (Tool to get keycodes and input event names)
  - Bottles (Creates containers to run Windows applications)
  - Blanket (plays soothing sounds!)
  - Gear Lever (for managing AppImages)
  - Smile (emoji picker)
- Gnome Extensions
  - Lock Keys Indicator (Show the state of Caps Lock and Num Lock on top bar)
  - Dash-to-Dock (Keep that dock visible on the bottom)
  - Lock Keys indicator (top panel indicator for Num Lock/Caps Lock status)
  - Tiling Shell (adds "fancy zones" style of window tiling)
  - Quick Close in Overview (close buttons on windows in Overview)
  - Click to Close Overview (click empty space in the Overview to close it)
  - Vitals (System activity indicators for the top panel)
  - Media Controls (show music playing on the top bar)
  - Date Menu Formatter (Change the way the date/time is shown on the top)

</details>


## Bluefin: Apollo Edition
![Bluefin Apollo Logo](files/framework-system/usr/share/pixmaps/fedora-logo-med.png)
- **System:** [Framework 13](https://frame.work/) - AMD Ryzen 7 7840U
- **Namesake:** [GTF Apollo](https://wiki.hard-light.net/index.php/GTF_Apollo) (Descent: FreeSpace)
- **Based on:** [Project Bluefin](https://projectbluefin.io/)

This piggybacks off of Bluefin, which is a good general-purpose Fedora that uses the Gnome desktop environment. This recipe just strips out a bunch of things I didn't need and provides common development tools and needs. On a Framework laptop, I'm not gonna do much - if any - gaming, so it's more focused as a light workstation.

### Installation
To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/brodyb/ublue-brody-apollo:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/brodyb/ublue-brody-apollo:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```


## Bazzite: Toybox Edition
![Bazzite Toybox Logo](files/desktop-system/usr/share/pixmaps/fedora-gdm-logo.png)
- **System:** Custom Build - AMD Ryzen 7 / 32GB RAM / 5TB / GeForce RTX 4070 Ti
- **Namesake:** [DS-12 Toybox](https://en.wikipedia.org/wiki/Planetes) (PLANETES)
- **Based on:** [Bazzite](https://bazzite.gg/)

Deriving from Bazzite (Gnome edition), a gaming-focused image, I built this to be my daily driver for game development work. Plus play a game every now-and-then. Includes everything from Apollo, but with more things for gaming and running virtual machines.

### Installation
To rebase an existing atomic Fedora installation to the latest build:

- First rebase to the unsigned image, to get the proper signing keys and policies installed:
  ```
  rpm-ostree rebase ostree-unverified-registry:ghcr.io/brodyb/ublue-brody-toybox:latest
  ```
- Reboot to complete the rebase:
  ```
  systemctl reboot
  ```
- Then rebase to the signed image, like so:
  ```
  rpm-ostree rebase ostree-image-signed:docker://ghcr.io/brodyb/ublue-brody-toybox:latest
  ```
- Reboot again to complete the installation
  ```
  systemctl reboot
  ```


## ISO

If built on Fedora Atomic, you can generate an offline ISO with the instructions available [here](https://blue-build.org/learn/universal-blue/#fresh-install-from-an-iso). These ISOs cannot unfortunately be distributed on GitHub for free due to large sizes, so for public projects something else has to be used for hosting.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/brodyb/ublue-brody-toybox
```

## Credits
- Default wallpaper by [Maciej Rebisz](https://linktr.ee/macrebisz) - [Sunrise](https://www.deviantart.com/macrebisz/art/Sunrise-667367161)
- Some images from Descent: FreeSpace, developed by Volition, Inc. and published by Interplay Entertainment
- Some images from PLANETES, manga written and illustrated by Makoto Yukimura, animation produced by Sunrise/Bandai Namco Filmworks
- Uses a modified version of [Tokyo Night](https://www.gnome-look.org/p/1681470) theme by [Fausto-Korpsvart](https://github.com/Fausto-Korpsvart)