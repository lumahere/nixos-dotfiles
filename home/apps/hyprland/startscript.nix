{pkgs}:
pkgs.writeShellScriptBin "hyprland_env-start" ''
    sleep 4
    killall -e xdg-desktop-portal-hyprland
    killall xdg-desktop-portal
    ${pkgs.xdg-desktop-portal-hyprland} & sleep 4
    ${pkgs.xdg-desktop-portal} &

    ${pkgs.swww} init & ${pkgs.swww} img home/nocta/.wall/primary.jpg
    
''