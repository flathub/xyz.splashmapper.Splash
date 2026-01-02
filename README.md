# Splash

___Immersive video mapping engine___

Splash is a video mapping software, dedicated to deploying immersive spaces. Splash takes care of semi-automatically calibrating the videoprojectors (field of view, optical shift, projection blending and color), and feeding them with the input video sources. Calibration relies on a 3D model of the projection surfaces, which allows for matching the real and virtual spaces. Ultimately this can lead for instance to projecting onto mobile objects, or hiding the physical space when used with head tracking. 

---

## Manual Install and Run

Make sure you follow the [setup guide for your Linux distribution](https://flathub.org/en/setup) before installing.

```bash
flatpak install flathub xyz.splashmapper.Splash
flatpak run xyz.splashmapper.Splash
```

## Building

```bash
git clone git@github.com:flathub/xyz.splashmapper.Splash.git
flatpak run org.flatpak.Builder build-dir --user --ccache --force-clean --install xyz.splashmapper.Splash.json
```

