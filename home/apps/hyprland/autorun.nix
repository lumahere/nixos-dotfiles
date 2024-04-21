{config, ...}:
{
    wayland.windowManager.hyprland.extraConfig = ''
    env=WLR_NO_HARDWARE_CURSORS,1
    exec-once = swww init & swww img /home/nocta/.wall/primary.jpg
    exec-once = waybar
    exec-once = blueman-applet
    exec-once = nm-applet
    '';
}
