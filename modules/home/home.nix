{ config, pkgs, ... }:

{
  home.packages = [
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
    pkgs.firefox
    pkgs.wofi
    pkgs.fastfetch
    pkgs.vesktop
    pkgs.obs-studio
    pkgs.obsidian
  ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/tibtab/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Enable mako (notifications)
  services.mako.enable = true;

  # Enable swww
  services.swww.enable = true;

  # Hyprland config
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    settings = {
      "$mod" = "SUPER";
      general = {
        gaps_in = 5;
	gaps_out = 20;

	border_size = 2;
	resize_on_border = true;
	layout = "dwindle";
      };
      decoration = {
        rounding = 10;
	active_opacity = 0.95;
	inactive_opacity = 0.95;
	shadow = {
	  enabled = true;
	  range = 4;
	  render_power = 3;
	  "color" = "rgba(1a1a1aee)";
	};
	blur = {
          enabled = true;
	  size = 7;
	  passes = 3;
	  vibrancy = 0.1696;
	};
      };
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
      gestures = {
 	workspace_swipe = true;
      };
      env = [
        "XDG_SESSION_TYPE,wayland"
	"XDG_CURRENT_DESKTOP,Hyprland"
	"XDG_SESSION_DESKTOP,Hyprland"
	"ELECTRON_OZONE_PLATFORM_HINT,auto"
      ];
      input = {
        follow_mouse = 1;
        touchpad = {
          natural_scroll = true;
	};
      };
    };
  };

  # GTK
  gtk = {
    enable = true;

    theme = {
      package = pkgs.nordic;
      name = "Nordic";
    };
  };

  # Enable zsh
  programs.zsh = {
    enable = true;
    autosuggestion = {
      enable = true;
    };
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
    };
  };

  # git config
  programs.git = {
    enable = true;
    userEmail = "14alexcockburn@gmail.com";
    userName = "alextibtab";
  };
  
  # Neovim config
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
