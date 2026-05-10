{ ... }: {
  home.file.".local/bin/astralrinth" = {
    text = ''
      #!/usr/bin/env bash
      exec env \
        __EGL_VENDOR_LIBRARY_FILENAMES=/run/opengl-driver/share/glvnd/egl_vendor.d/10_nvidia.json \
        __GLX_VENDOR_LIBRARY_NAME=nvidia \
        GDK_BACKEND=x11 \
        SDL_VIDEODRIVER=x11 \
        steam-run /home/cicada/Games/AstralRinth.AppImage "$@"
    '';
    executable = true;
  };
}
