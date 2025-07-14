{ pkgs, ... }:
{
  services = {
    gnome.gnome-keyring.enable = true;
    dbus.packages = with pkgs; [
      gcr
      gnome-settings-daemon
    ];

    displayManager = {
      sddm = {
        enable = true;
	wayland = {
          enable = true;
	};
      };
      defaultSession = "hyprland";
    };
  };
}
