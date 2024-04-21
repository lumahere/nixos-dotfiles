{config, pkgs, ...}:
{
    imports = [
    ./wallpapers/default.nix
    ./bind.nix
    ./env.nix
    ./autorun.nix
    ./decors.nix
    ./windowRules.nix
];

wayland.windowManager.hyprland.enable = true;

wayland.windowManager.hyprland.settings = {
    input = {
	kb_layout = "us";
	follow_mouse = 1;
    };
};

}
