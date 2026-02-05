{ pkgs, ... }: {
  environment.systemPackages = with pkgs; with jetbrains; [
    android-studio

    clion
    webstorm
    pycharm-professional
    idea-community

    wireshark
  ];
  
  programs.command-not-found.enable = true;
}
