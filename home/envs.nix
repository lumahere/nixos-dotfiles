{pkgs, config, ...}:
{
    home = {
        sessionVariables = {
        GBM_BACKEND = "nvidia-drm";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
        LIBVA_DRIVER_NAME = "nvidia";

        # hardware accel
        __GL_VRR_ALLOWED = "1";
        WLR_NO_HARDWARE_CURSORS = "1";
        # WLR_RENDERER_ALLOW_SOFTWARE = "1";
        CLUTTER_BACKEND = "wayland";
        # WLR_RENDERER = "vulkan";

        XDG_CURRENT_DESKTOP = "Hyprland";
        XDG_SESSION_DESKTOP = "Hyprland";
        XDG_SESSION_TYPE = "wayland";

        XCURSOR_SIZE = "24";
        QT_QPA_PLATFORMTHEME = "qt5ct" # change to qt6ct if you have that



    };
    }
}