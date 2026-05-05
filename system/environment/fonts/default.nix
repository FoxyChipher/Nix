{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    aporetic
    cozette
    fira-code-symbols
    font-awesome
    googlesans-code
    inconsolata
    inter
    material-symbols
    minecraftia
    monocraft
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.departure-mono
    nerd-fonts.hack
    nerd-fonts.symbols-only
    newcomputermodern
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    roboto
    roboto-flex
    roboto-mono
    roboto-serif
    ubuntu-sans
  ];

  fonts.fontconfig = {
    enable = true;
    cache32Bit = true;
    antialias = true;
    allowBitmaps = true;
    useEmbeddedBitmaps = true;
    subpixel = {
      rgba = "rgb";
      lcdfilter = "default";
    };
    hinting = {
      enable = true;
      style = "slight";
      autohint = false;
    };
  };
}
