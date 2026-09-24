{pkgs,...}:
{
programs.yazi = {
      enable = true;
      plugins = with pkgs.yaziPlugins;{
        full-border = full-border;          
        };
    };
}



