{ ... }: {
  services.udev.extraRules = ''
    # see: https://reactnative.dev/docs/running-on-device
    # Allow connect to OPPO devices
    SUBSYSTEM=="usb", ATTR{idVendor}=="22d9", MODE="0666", GROUP="plugdev"
  '';
}
