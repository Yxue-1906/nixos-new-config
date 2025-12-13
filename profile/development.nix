{ pkgs, extra-args, ... }@input: {
  nixpkgs.overlays = [
    (final: prev: let 
      android-studio-pkgs = import extra-args.android-studio-nixpkgs { inherit (pkgs) system config; };
      in {
      android-studio = android-studio-pkgs.android-studio;
    })
  ];
  environment.systemPackages = with pkgs; with jetbrains; [
    clion
    webstorm
    pycharm-professional
    rust-rover

    android-studio
  ];
}
