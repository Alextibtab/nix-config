{
  pkgs,
  inputs,
  username,
  host,
  ...
}:
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  # Setup home-manager
  home-manager = {
    extraSpecialArgs = { inherit inputs username host; };
    useUserPackages = true;
    useGlobalPkgs = true;
    users.${username} = {
      imports = [ ./../home/home.nix ];
      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "25.05";
      programs.home-manager.enable = true;
    };
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  nix.settings.allowed-users = [ "${username}" ];
}
