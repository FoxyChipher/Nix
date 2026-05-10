{ pkgs, lib, inputs, config, ... }: {
  programs.firefox = {
    enable = true;

    # languagePacks = [ "en-US" ];

    # preferences = {
      # "browser.startup.homepage"      = "https://example.com";
      # "privacy.resistFingerprinting"  = false;
    # };

    # policies = {
    #   DisableTelemetry = true;
    # };
  };

  programs.firefox.configPath = ".mozilla/firefox";
}
