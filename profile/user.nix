{ pkgs, secrets, ...}: {

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.unrelated = {
    isNormalUser = true;
    password = secrets.password;
    extraGroups = [ "wheel" "networkmanager" "kvm" ]; # Enable ‘sudo’ for the user.
  };
}
