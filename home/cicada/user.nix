{ config, pkgs, ... }: {
  users.users."cicada" = {
    isNormalUser = true;
    group = "cicada";
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
  users.groups.cicada = {};
}
