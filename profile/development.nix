{ pkgs, extra-args, ... }@input: {
  # nixpkgs.overlays = [
  #   (final: prev: let 
  #     jetbrains-pkgs = import extra-args.jetbrains-nixpkgs { inherit (pkgs) system config; };
  #     in {
  #     jetbrains = jetbrains-pkgs.jetbrains;
  #   })
  # ];
  environment.systemPackages = with pkgs; with jetbrains; [
    clion
  ];
}
