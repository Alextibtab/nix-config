{ ... }:
{
  wayland.WindowManager.hyprland.settings = {
    exec-once = [
      "systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
      "dbus-update-activation-environment --all --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
    ];
  };
}
