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
      gaps_in = 3;
      gaps_out = 5;

      border_size = 3;
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
      rounding = 8;
      active_opacity = 0.95;
      inactive_opacity = 0.95;
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
      bezier = [
        "default, 0.12, 0.92, 0.08, 1.0"
        "wind, 0.12, 0.92, 0.08, 1.0"
        "overshot, 0.18, 0.95, 0.22, 1.02"
        "liner, 1, 1, 1, 1"
      ];
      animation = [	
        "windows, 1, 5, wind, popin 60%"
        "windowsIn, 1, 6, overshot, popin 60%"
        "windowsOut, 1, 4, overshot, popin 60%"
        "windowsMove, 1, 4, overshot, slide"
        "layers, 1, 4, default, popin"
        "fadeIn, 1, 7, default"
        "fadeOut, 1, 7, default"
        "fadeSwitch, 1, 7, default"
        "fadeShadow, 1, 7, default"
        "fadeDim, 1, 7, default"
        "fadeLayers, 1, 7, default"
        "workspaces, 1, 5, overshot, slidevert"
        "border, 1, 1, liner"
        "borderangle, 1, 24, liner, loop"
      ];
    };
  };
}
