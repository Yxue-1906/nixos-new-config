{ config, lib, pkgs, secrets, ...}: {

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.mutableUsers = false;
  users.users.unrelated = {
    isNormalUser = true;
    password = secrets.password;
    extraGroups = [ "aria2" "wheel" "networkmanager" ]; # Enable ‘sudo’ for the user.
  };
}
