{ pkgs, lib, inputs, config, ... }: {
  home.packages = [ inputs.zen-browser.packages.${pkgs.system}.default ];
}
