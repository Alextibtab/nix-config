{ config, pkgs, inputs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./../../modules/core
    ];

  # Define a user account. Don't forget to set a password with ‘passwd’.
  environment.systemPackages = with pkgs; [
    waypaper
    hyprshot
  ];
}
