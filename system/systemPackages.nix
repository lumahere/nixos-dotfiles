{config, pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2

  ];
  programs.hyprland.enable = true;
  programs.fish.enable = true;
  programs.fish.shellInit = ''starship init fish | source'';
}