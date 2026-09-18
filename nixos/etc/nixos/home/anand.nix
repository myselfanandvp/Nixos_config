{config,pkgs,inputs,...}:
{

imports =[
inputs.noctalia.homeModules.default
];

home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
];

programs.git = {
  enable = true;
  settings={
      user={
          name="myselfanandvp";
          email="mailanandvp@gmail.com";
        };
    };
};

programs.noctalia = {
    enable = true;

settings = {
    theme = {
        mode="dark";
        source = "builtin";
        builtin = "Catppuccin";
      };

      wallpaper = {
          enable =true;
        };
  };
  };


programs.kitty =  {
  enable = true;
  settings = {
    confirm_os_window_close = 0;
    dynamic_background_opacity = true;
    enable_audio_bell = false;
    mouse_hide_wait = -1.0;
    window_padding_width = 1;
    background_opacity = 0.98;
    cursor_shape = "beam";
    cursor_beam_thickness = 2;
    cursor_stop_blinking_after = 15.0;
    cursor_trail = 20;
    cursor_trail_decay = "0.04 0.8";
    cursor_trail_start_threshold = 1;
    tab_bar_edge           = "top";
    tab_bar_style          = "powerline";
    tab_powerline_style    = "slanted";
    active_tab_font_style  = "bold";
    inactive_tab_font_style = "normal";
    font_family      = "JetBrainsMono Nerd Font Mono";
    bold_font        = "auto";
    italic_font      = "auto";
    bold_italic_font = "auto";
    font_size        = 14.0;
  };
};









}
