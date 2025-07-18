{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    env = [
      "XDG_SESSION_TYPE,wayland"
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "ELECTRON_OZONE_PLATFORM_HINT,auto"
      "HYPRCURSOR_THEME,rose-pine-hyprcursor"
      "HYPRCURSOR_SIZE,20"
    ];
  };
}
