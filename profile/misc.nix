{ ... }: {
  services.openssh = {
    enable = true;
    ports = [ 22222 ];
    settings = {
      PermitRootLogin = "no";
      AllowUsers = [ "unrelated" ];
    };
  };
}
