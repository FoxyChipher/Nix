{ config, pkgs, lib, inputs, ... }: {
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        use-bold = false;
        icons-enabled = true;
        password-character = "*";
        match-mode = "fzf";
        keyboard-focus = "exclusive";
        exit-on-keyboard-focus-loss = true;
        enable-mouse = true;
        sort-result = true;
        terminal = "kitty -e";
        font = lib.mkForce "Google Sans Code:style=Regular:size=12";
        prompt = ">> ";
        icon-theme = "default";
        anchor = "center";
        lines = 15;
        width = 30;
        tabs = 8;
        horizontal-pad = 15;
        vertical-pad = 12;
        inner-pad = 10;
        image-size-ratio = 0.3;
        gamma-correct-blending = true;
      };
      colors = lib.mkForce {
        background = "00000055";
        text = "eeeeeeff";
        message = "eeeeeeff";
        prompt = "eeeeeeff";
        placeholder = "eeeeeeff";
        input = "eeeeeeff";
        match = "eeeeeeff";
        selection = "ffffffff";
        selection-text = "000000ff";
        selection-match = "1565C0ff";
        counter = "93a1a1ff";
        border = "ffffffff";
      };
      border = {
        width = 0;
        radius = 10;
      };
      dmenu = {};
      key-bindings = {};
    };
  };
}
