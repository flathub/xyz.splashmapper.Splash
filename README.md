# Flathub

Flathub is the central place for building and hosting Flatpak builds.

Using the Flathub repository
----------------------------

To install applications that are hosted on Flathub, use the following:
```bash
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.gnome.Recipes
```

To install applications from the beta branch, use the following:
```bash
flatpak remote-add flathub-beta https://flathub.org/beta-repo/flathub-beta.flatpakrepo
flatpak install flathub-beta org.godotengine.Godot
```

For more information and more applications see https://flathub.org

Build Splash package
--------------------

To build Splash package manually:

```bash
# Install dependencies
sudo apt install -y flatpak-builder
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.freedesktop.Platform//22.08 org.freedesktop.Sdk//22.08

# Build the package
flatpak-builder --ccache --repo=flatpak_repo build --force-clean xyz.splashmapper.Splash.json
flatpak build-bundle flatpak_repo splash.flatpak xyz.splashmapper.Splash

# Install it
flatpak install --user splash.flatpak
```

Contributing to Flathub
-----------------------

For information on creating packages or reporting issues please see the [contributing page](/CONTRIBUTING.md).

***Note:*** *this repository is not for reporting issues related to the flathub.org website itself or contributing to its development. For that, go to https://github.com/flathub/website*
