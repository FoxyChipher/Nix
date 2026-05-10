{ pkgs, ... }: {
  programs.steam = {
    enable = true;
  };

  programs.steam-run = {
    enable = true;
  };
}
