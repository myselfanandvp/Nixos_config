{config,pkgs,inputs,...}:
{
imports =[
inputs.noctalia.homeModules.default
./kitty.nix
./git.nix
./noctalia.nix
./tmux.nix
./neovim.nix
];
home.username = "anand";
home.homeDirectory = "/home/anand";
home.stateVersion = "26.05";
home.enableNixpkgsReleaseCheck = false;
home.packages = with pkgs; [
  nerd-fonts.jetbrains-mono
];
home.pointerCursor = {
  enable = true;
  package = pkgs.bibata-cursors;
  name = "Bibata-Modern-Classic";
  size = 32;
};

home.pointerCursor.hyprcursor = {
  enable = true;
  size = 18;
};   

xdg.configFile."niri".source = ./niri;
xdg.configFile."hypr".source = ./hypr;
xdg.configFile."nvim".source = ./nvim;
xdg.configFile."yazi".source = ./yazi;
xdg.configFile."starship.toml".source = ./starship.toml;
xdg.configFile."herdr".source = ./herdr;
xdg.configFile."fish".source = ./fish;
xdg.configFile."fastfetch".source = ./fastfetch;
xdg.configFile."ghostty".source = ./ghostty;
}
