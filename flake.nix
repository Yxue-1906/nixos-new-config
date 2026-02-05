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
}
