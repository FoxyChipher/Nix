{ config, pkgs, lib, inputs, ... }: {
  home-manager.users."cicada" = { config, pkgs, ... }: {
    # ~/.local/share/applications/factorio.desktop
    xdg.dataFile."applications/factorio.desktop".text = ''
      [Desktop Entry]
      Name=Factorio
      Exec=env __EGL_VENDOR_LIBRARY_FILENAMES=/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json __GLX_VENDOR_LIBRARY_NAME=nvidia SDL_VIDEODRIVER=x11 steam-run /home/cicada/Games/Factorio/bin/x64/factorio
      Icon=/home/cicada/Games/Factorio/data/core/graphics/factorio-icon.png
      Type=Application
      Categories=Game;
    '';

    # ~/.local/bin/factorio
    home.file.".local/bin/factorio" = {
      text = ''
        #!/usr/bin/env bash
        exec env \
          __EGL_VENDOR_LIBRARY_FILENAMES=/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json \
          __GLX_VENDOR_LIBRARY_NAME=nvidia \
          SDL_VIDEODRIVER=x11 \
          steam-run /home/cicada/Games/Factorio/bin/x64/factorio "$@"
      '';
      executable = true;
    };

  };
}
