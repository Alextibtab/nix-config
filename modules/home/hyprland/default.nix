{ inputs, pkgs, ... }:
{
  home.packages = with pkgs; [
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
  }; 

  imports = [
    ./general.nix
    ./keybinds.nix
    ./env.nix
    ./exec-once.nix
    inputs.hyprland.homeManagerModules.default
  ];
}
