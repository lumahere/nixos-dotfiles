{pkgs}:
pkgs.writeShellScriptBin "nix-hyprland-startupfix" ''
    sleep 4
    killall -e xdg-desktop-portal-hyprland       
    killall xdg-desktop-portal
    ${pkgs.xdg-desktop-portal-hyprland} &
    sleep 4
    ${pkgs.xdg-desktop-portal} &
''