{ config, secrets, ... }: {
  services.openssh = {
    enable = true;
    ports = [ 22222 ];
    settings = {
      PermitRootLogin = "no";
      AllowUsers = [ "unrelated" ];
    };
  };
  services.opkssh = {
    enable = true;
    authorizations = [
      {
        user = "unrelated";
        principal = secrets.email.outlook;
        inherit (config.services.opkssh.providers.microsoft) issuer;
      }
      {
        user = "unrelated";
        principal = secrets.email.gmail;
        inherit (config.services.opkssh.providers.google) issuer;
      }
    ];
  };
}
