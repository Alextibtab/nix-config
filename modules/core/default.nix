{ ... }:
{
  imports = [
    ./bootloader.nix
    ./hardware.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./packages.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
  ];
}
