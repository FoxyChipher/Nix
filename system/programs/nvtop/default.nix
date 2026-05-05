{ pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [ nvtopPackages.full ];
}
