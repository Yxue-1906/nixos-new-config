{
  description = "Nanashi's flake.nix";
  inputs = {
    common.url = "github:Yxue-1906/nixos-common-config";
    # common.url = "git+file:///etc/nixos-common-config/";
    android-studio-nixpkgs.url = "github:NixOS/nixpkgs/6ff44e6ab44230e2f140c79595f42f22018da684";
  };
  outputs = { self, common, android-studio-nixpkgs, ... }@inputs: common.build-host { 
    profile = import ./profile;
    secrets = import ./secrets;
    extra-args = {
      inherit android-studio-nixpkgs;
    };
  };
}
