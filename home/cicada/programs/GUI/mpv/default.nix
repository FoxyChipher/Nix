{ ... }: {
  # (mpv.override { yt-dlp = null; })
  programs.mpv = {
    enable = true;
    bindings = {
      "r" = "cycle-values video-rotate 90 180 270 0";
    };
  };
}
