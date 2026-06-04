{ pkgs, ... }: {
  environment.systemPackages = with pkgs; with jetbrains; [
    clion
  ];
  
  programs.command-not-found.enable = true;
}
