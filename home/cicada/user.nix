{ config, pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."cicada" = {
    isNormalUser = true;
    description = "cicada";
    home = "/home/cicada";
    shell = pkgs.bash;
    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "audio"
      "pipewire"
      "input"
      "rtkit"
      "realtime"
      "adbusers"
      "render"
      "games"
      "gamemode"
      "mpd"
      "cdrom"
      "disk"
      "floppy"
      "kmem"
      "incus-admin"
    ];

    packages = with pkgs; [ ];
  };
}
