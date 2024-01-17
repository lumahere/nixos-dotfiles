{pkgs}:
pkgs.writeShellScriptBin "hyprland_env-start" ''
    sleep 4
    ${pkgs.killall} -e xdg-desktop-portal-hyprland
    ${pkgs.killall} xdg-desktop-portal
    ${pkgs.xdg-desktop-portal-hyprland} & sleep 4
    ${pkgs.xdg-desktop-portal}

    

''