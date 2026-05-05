{ ... }: {
  environment.sessionVariables = {
    # === Wayland ===
    XDG_SESSION_TYPE = "wayland";
    XDG_CURRENT_DESKTOP = "niri";
    XDG_SESSION_DESKTOP = "niri";

    SDL_VIDEODRIVER = "wayland";

    PATH = "$HOME/.local/bin:$PATH";
    LD_LIBRARY_PATH = "/run/current-system/sw/share/nix-ld/lib";

    # === Toolkit ===
    # QT_QPA_PLATFORM = "wayland;xcb";
    # GDK_BACKEND = "wayland,x11,*";

  # === Wayland apps ===
  # MOZ_ENABLE_WAYLAND = "1";
  # NIXOS_OZONE_WL = "1";
  # ELECTRON_OZONE_PLATFORM_HINT = "wayland";

  # === Java fix ===
  # _JAVA_AWT_WM_NONREPARENTING = "1";

  # === Cursor ===
  # XCURSOR_THEME = "Bibata-Modern-Ice";
  # XCURSOR_SIZE = "24";
  };
}
