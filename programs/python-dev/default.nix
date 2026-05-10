{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    # Python tooling
    basedpyright   # LSP (форк pyright с улучшениями)
    ruff           # линтер + форматтер
    python3        # или python313, в зависимости от нужд
  ];
}
