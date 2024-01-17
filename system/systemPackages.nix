{config, pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
    libsForQt5.qt5.qtgraphicaleffects
    libsForQt5.qt5.qtquickcontrols2

  ];

  fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
];
  programs = {
    hyprland.enable = true;
    fish = {enable = true; shellInit = ''starship init fish | source''; }
  };
}