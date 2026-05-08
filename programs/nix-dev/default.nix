{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nixd
    nixf
    nixt
    nixdoc
    nixfmt
    nixfmt-tree
  ];
}
