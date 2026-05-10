{ pkgs, ... }: {
  home.packages = with pkgs; [
    basedpyright
    ruff
  ];

  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      nvim-cmp
      cmp-nvim-lsp
      (nvim-treesitter.withPlugins (p: [ p.python ]))
    ];
  };
}
