{config, pkgs, ...}:
{
    imports = [
    ./wallpapers/default.nix
];

    wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    extraConfig = builtins.readFile ./hyprland.conf;
        };
}