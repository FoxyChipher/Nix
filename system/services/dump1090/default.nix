{ pkgs, ... }:
{
  services.dump1090-fa.enable = true;

  services.nginx = {
    enable = true;
    virtualHosts."dump1090-fa" = {
      locations = {
        "/".alias = "${pkgs.dump1090-fa}/share/dump1090/";
        "/data/".alias = "/run/dump1090-fa/";
      };
    };
  };
}
