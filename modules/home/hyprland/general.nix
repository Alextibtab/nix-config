{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    monitor = ", 1920x1200@90, auto, 1"; 
    input = {
      follow_mouse = 1;
      touchpad = {
        natural_scroll = true;
      };
    };
    gestures = {
      workspace_swipe = true;
    };
    general = {
      gaps_in = 5;
      gaps_out = 20;

      border_size = 2;
        resize_on_border = true;
        layout = "dwindle";
    };
    master = {
      new_status = "master";
    };
    misc = {
      disable_hyprland_logo = true;
    };
    ecosystem = {
      no_donation_nag = true;
    };
    decoration = {
      rounding = 10;
      active_opacity = 0.9;
      inactive_opacity = 0.7;
      shadow = {
        enabled = true;
        range = 4;
        render_power = 3;
        "color" = "rgba(15151511)";
      };
      blur = {
        enabled = true;
        size = 7;
        passes = 3;
        vibrancy = 0.1696;
      };
    };
    animations = {
      enabled = true;
      bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
      animation = [
        "windows, 1, 7, myBezier"
        "windowsOut, 1, 7, myBezier"
        "border, 1, 10, default"
        "fade, 1, 7, default"
        "workspaces, 1, 6, default"
      ];
    };
  };
}
