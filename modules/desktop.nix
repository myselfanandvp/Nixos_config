{
  inputs,
  ...
}:
{
  imports = [
    inputs.umbriel.nixosModules.default
    inputs.qylock.nixosModules.default
  ];

  programs = {
    qylock = {
      enable = true;
      theme = "material-you";
      themeOptions = { };
    };

    umbriel.enable = true;
    niri = {
      enable = true;
    };
  };

  xdg.portal.config.niri = {
    "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ]; # or "kde"
  };
}
