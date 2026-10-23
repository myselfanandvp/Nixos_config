{ _, ... }:

{
  programs.bash = {
    enable = true;

    # ---- History Settings ----
    historySize = 10000;
    historyFileSize = 20000;

    historyControl = [
      "ignoredups"
      "erasedups"
    ];

    historyIgnore = [ ];

    # ---- Shell Options ----
    shellOptions = [
      "histappend"
      "checkwinsize"
    ];

    # ---- Session Variables ----
    sessionVariables = {
      HISTTIMEFORMAT = "%F %T ";
      MANPAGER = "sh -c 'col -bx | bat -l man -p'";
      MANROFFOPT = "-c";
    };

    # ---- PATH ----
    profileExtra = ''
      for dir in \
        "$HOME/.local/bin" \
        "$HOME/Applications/depot_tools" \
        "$HOME/.npm-global/bin" \
        "$HOME/.bun/bin" \
        "$HOME/go/bin" \
        "$HOME/.cargo/bin"
      do
        case ":$PATH:" in
          *":$dir:"*) ;;
          *) PATH="$dir:$PATH" ;;
        esac
      done

      export PATH
    '';

    # ---- Aliases ----
    shellAliases = {
      # Navigation
      ".." = "cd ..";
      "..." = "cd ../..";
      grep = "grep --color=auto";

      # eza
      ls = "eza -al --group-directories-first --icons";
      gl = "eza -al --group-directories-first --icons --git";
      ll = "eza -l --group-directories-first --icons";
      la = "eza -a --group-directories-first --icons";
      lt = "eza -aT --group-directories-first --icons";

      # General Utilities
      wget = "wget -c";
      tarnow = "tar -acf";
      untar = "tar -xzvf";
      help = "tldr";
      ld = "lazydocker";
      nv = "nvim";
      yz = "yazi .";
      tx = "tmux";
      up = "topgrade";
      txk = "tmux kill-session";
      tl = "tmux ls";
      yt = "yt-dlp";
      jctl = "journalctl -p 3 -xb";
      hw = "hwinfo --short";
      zed = "zeditor";

      # NixOS Management
      update = "sudo nixos-rebuild switch --flake /etc/nixos/#desktop";
      cleanup = "nix-collect-garbage -d && sudo nix-collect-garbage -d";
    };
  };
}
