{ pkgs, ... }: {
  programs.nix-ld = {
      enable = true;
      libraries = with pkgs; [
            gtk3
            glib
            gdk-pixbuf
            cairo
            pango
            atk
            webkitgtk_4_1
            libsoup_3
          ];
  };
}
