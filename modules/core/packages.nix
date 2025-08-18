{ pkgs, ... }:
{
  programs.zsh.enable = true;
  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [
    waypaper
    hyprshot
    gnumake
    nodejs_24
    libgcc
    libgccjit
    tree-sitter
  ];
}
