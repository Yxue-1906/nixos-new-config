{ pkgs, ... }: {
  environment.systemPackages = with pkgs; with jetbrains; [
    android-studio

    clion
    webstorm
    pycharm-professional
  ];
}
