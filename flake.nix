{
  description = "Nanashi's flake.nix";
  inputs = {
    common.url = "github:Yxue-1906/nixos-common-config";
    # common.url = "git+file:///etc/nixos-common-config/";
  };
  outputs = { self, common, ... }@inputs: common.build-host { 
    profile = import ./profile;
    secrets = import ./secrets;
  };
  # outputs = { self, common, ... }@inputs: with nixpkgs.lib; {
  #   nixosConfigurations."unrelated" = nixosSystem rec {
  #     # now set system manually is work around, find if can use nixpkgs.hostPlatform
  #     system = "x86_64-linux";
  #     specialArgs = {
  #       inherit self;
  #       secrets = import ./secrets/secrets.nix;
  #     };
  #     modules = [
  #       ./networking
  #       ./applications
  #       ./filesystem
  #       ./profile
  #       ./basic-config
  #       ./security
  #     ];
  #   };
  # };
}
