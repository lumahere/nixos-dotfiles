{pkgs, config, ...}:
{
    imports = [
    ./config.nix
    ./css.nix
    ];
    programs.waybar.enable = true;
}
