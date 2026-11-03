{
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      user = {
        name = "myselfanandvp";
        email = "mailanandvp@gmail.com";
      };
      alias = {
        ci = "commit";
        co = "checkout";
        s = "status";
      };
    };
    package = pkgs.gitFull;
  };
}
