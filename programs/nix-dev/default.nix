{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nixd
    nixf
    nixt
    nixdoc
    nixfmt
    nixfmt-tree
    zed-editor-fhs
    micro-full
  ];
}
