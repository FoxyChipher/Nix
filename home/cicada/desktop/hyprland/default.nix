{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    systemd.enable = false;
    settings = {
      # decoration = {
      #   shadow_offset = "0 5";
      #   "col.shadow" = "rgba(00000099)";
      # };

      "$mod" = "SUPER";
      "$terminal" = "kitty";
      "$fileManager" = "dolphin";
      "$menu" = "hyprlauncher";

      general = {
          gaps_in = 1;
          gaps_out = 10;

          border_size = 1;

          # https://wiki.hypr.land/Configuring/Variables/#variable-types for info about colors
          # col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
          # col.inactive_border = rgba(595959aa)

          # Set to true enable resizing windows by clicking and dragging on borders and gaps
          resize_on_border = false;

          # Please see https://wiki.hypr.land/Configuring/Tearing/ before you turn this on
          allow_tearing = false;

          layout = "dwindle";
      };

      decoration  = {
          rounding = 10;
          rounding_power = 2;

          # Change transparency of focused and unfocused windows
          active_opacity = 1.0;
          inactive_opacity = 1.0;

          shadow = {
              enabled = true;
              range = 4;
              render_power = 3;
              # color = rgba(1a1a1aee);
              };

          # https://wiki.hypr.land/Configuring/Variables/#blur
          blur = {
              enabled = true;
              # size = 3;
              # passes = 1;

              # vibrancy = "0.1696";
          };
      };

      animations = {
        enabled = true;
        bezier = [
          "easeOutQuint,   0.23, 1,    0.32, 1"
          "easeInOutCubic, 0.65, 0.05, 0.36, 1"
          "linear,         0,    0,    1,    1"
          "almostLinear,   0.5,  0.5,  0.75, 1"
          "quick,          0.15, 0,    0.1,  1"
        ];
        animation = [
          "global,        1, 10,   default"
          "border,        1, 5.39, easeOutQuint"
          "windows,       1, 4.79, easeOutQuint"
          "windowsIn,     1, 4.1,  easeOutQuint, popin 87%"
          "windowsOut,    1, 1.49, linear,       popin 87%"
          "fadeIn,        1, 1.73, almostLinear"
          "fadeOut,       1, 1.46, almostLinear"
          "fade,          1, 3.03, quick"
          "layers,        1, 3.81, easeOutQuint"
          "layersIn,      1, 4,    easeOutQuint, fade"
          "layersOut,     1, 1.5,  linear,       fade"
          "fadeLayersIn,  1, 1.79, almostLinear"
          "fadeLayersOut, 1, 1.39, almostLinear"
          "workspaces,    1, 1.94, almostLinear, fade"
          "workspacesIn,  1, 1.21, almostLinear, fade"
          "workspacesOut, 1, 1.94, almostLinear, fade"
          "zoomFactor,    1, 7,    quick"
        ];
      };

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:alt_shift_toggle";
        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = false;
        };
      };

      ###################
      ### KEYBINDINGS ###
      ###################

      bind = [
        "$mod, Return, exec, $terminal"
        "$mod, Q, killactive,"
        "$mod, E, exec, $fileManager"
        "$mod, V, togglefloating,"
        "$mod, R, exec, $menu"
        "$mod, P, pseudo,"
        "$mod, J, layoutmsg, togglesplit"

        # Move focus with mainMod + arrow keys
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        # Execute Rofi with only the SUPER key
        "$mod, Super_D, exec, pkill fuzzel || fuzzel"
        "$mod, M, exec, command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch exit"

        "$mod, F, exec, librewolf"

        "CONTROL ALT, T, exec, wezterm"
      ];

      monitor = [
        "eDP-1, 1920x1080@144, 0x0, 1.5"
        "HDMI-A-1, 1920x1080@165, 1280x0, 1"
      ];

      layerrule = [
        "blur, noctalia"
        "ignorezero, noctalia"
      ];

      # Startup Apps
      exec-once = [
        "hyprpanel"
      ];

      bindm = [
        # mouse movements
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
        "$mod ALT, mouse:272, resizewindow"
      ];
    };
  };
}
