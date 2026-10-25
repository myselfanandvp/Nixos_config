{
  config,
  pkgs,
  inputs,
  ...
}:

let
  DotConfig = "${config.home.homeDirectory}/Nixos_config/config/.config";
  outOfStore = config.lib.file.mkOutOfStoreSymlink;
in

{
  imports = [
    inputs.noctalia.homeModules.default
    ./git.nix
    ./noctalia.nix
    ./neovim.nix
    ./tmux.nix
    ./zed.nix
    ./bashrc.nix
    (import ./yazi.nix {
      inherit config pkgs outOfStore;
    })
  ];
  home = {
    username = "anand";
    homeDirectory = "/home/anand";
    stateVersion = "26.05";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      adw-gtk3
      bibata-cursors
      papirus-icon-theme
      gruvbox-plus-icons
      nerd-fonts.jetbrains-mono
      lazygit
      docker-compose
      lazydocker
      herdr
      xwayland-satellite
    ];
  };

  xdg.configFile = {
    "fish".source = outOfStore "${DotConfig}/fish";
    "starship.toml".source = outOfStore "${DotConfig}/starship.toml";
    "niri".source = outOfStore "${DotConfig}/niri";
    "mpv".source = outOfStore "${DotConfig}/mpv";
    "kitty".source = outOfStore "${DotConfig}/kitty";
    "fastfetch".source = outOfStore "${DotConfig}/fastfetch";
    "ghostty".source = outOfStore "${DotConfig}/ghostty";
    "wezterm".source = outOfStore "${DotConfig}/wezterm";
    "umbriel".source = outOfStore "${DotConfig}/umbriel";
  };

  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 8;
  };

  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
    };
    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Classic";
      package = pkgs.bibata-cursors;
      size = 8;
    };
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 12;
    };
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = true;
    };
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk3";
  };

  xdg.configFile = {

    "qt5ct/qt5ct.conf".text = ''
      [Appearance]
      color_scheme_path=${config.home.homeDirectory}/.config/qt5ct/colors/noctalia.conf
      custom_palette=true
      icon_theme=Papirus-Dark
      standard_dialogs=gtk3

      [Fonts]
      fixed="DejaVu Sans,12,-1,5,50,0,0,0,0,0,Regular"
      general="JetBrainsMono Nerd Font,12,-1,5,50,0,0,0,0,0,Regular"

      [Interface]
      activate_item_on_single_click=1
      buttonbox_layout=0
      cursor_flash_time=1000
      dialog_buttons_have_icons=1
      double_click_interval=400
      gui_effects=@Invalid()
      keyboard_scheme=2
      menus_have_icons=true
      show_shortcuts_in_context_menus=true
      stylesheets=@Invalid()
      toolbutton_style=4
      underline_shortcut=1
      wheel_scroll_lines=3
    '';
    "qt6ct/qt6ct.conf".text = ''
      [Appearance]
      color_scheme_path=${config.home.homeDirectory}/.config/qt5ct/colors/noctalia.conf
      custom_palette=true
      icon_theme=Papirus-Dark
      standard_dialogs=gtk3

      [Fonts]
      fixed="DejaVu Sans,12,-1,5,50,0,0,0,0,0,Regular"
      general="JetBrainsMono Nerd Font,12,-1,5,50,0,0,0,0,0,Regular"

      [Interface]
      activate_item_on_single_click=1
      buttonbox_layout=0
      cursor_flash_time=1000
      dialog_buttons_have_icons=1
      double_click_interval=400
      gui_effects=@Invalid()
      keyboard_scheme=2
      menus_have_icons=true
      show_shortcuts_in_context_menus=true
      stylesheets=@Invalid()
      toolbutton_style=4
      underline_shortcut=1
      wheel_scroll_lines=3
    '';
  };

}
