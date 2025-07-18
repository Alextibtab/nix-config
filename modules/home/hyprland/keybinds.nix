{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "$mod, Return, exec, ghostty"
      "$mod, M, exit,"
      "$mod, W, killactive,"
      "$mod, Space, exec, wofi --show drun"
      "$mod, H, movefocus, l"
      "$mod, J, movefocus, d"
      "$mod, K, movefocus, u"
      "$mod, L, movefocus, r"
      "$mod, F, fullscreen,"
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod, mouse_down, workspace, e-1"
      "$mod, mouse_up, workspace, e+1"
      "$mod SHIFT, P, exec, hyprshot -m output --clipboard-only"
      "$mod Left_Ctrl, P, exec, hyprshot -m region --clipboard-only"
      "$mod, P, exec, hyprshot -m window --clipboard-only"
    ];
  };
}
