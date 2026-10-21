{config,pkgs,inputs,...}:
{
programs.bash = {
    enable = true;

    # ---- History Settings ----
    historySize = 10000;
    historyFileSize = 20000;
    historyControl = [ "ignoredups" "erasedups" ];
    historyIgnore = [ ];
    
    # Enable window size checking and history appending
    shellOptions = [
      "histappend"
      "checkwinsize"
    ];

    # ---- Session Variables & Environment ----
    sessionVariables = {
      HISTTIMEFORMAT = "%F %T ";
      MANPAGER = "sh -c 'col -bx | bat -l man -p'";
      MANROFFOPT = "-c";
    };

    # Append paths cleanly to $PATH
    profileExtra = ''
      for dir in /usr/bin ~/.local/bin ~/Applications/depot_tools ~/.npm-global/bin ~/.bun/bin ~/go/bin ~/.cargo/bin; do
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

      # eza / ls overrides
      ls = "eza -al --group-directories-first --icons";
      gl = "eza -al --group-directories-first --icons --git-repos";
      ll = "eza -l --group-directories-first --icons";
      la = "eza -a --group-directories-first --icons";
      lt = "eza -aT --group-directories-first --icons";

      # General Utilities
      wget = "wget -c";
      tarnow = "tar -acf";
      untar = "tar -zxvf";
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

      # NixOS system management aliases (Replaces pacman/apt/dnf)
      update = "sudo nixos-rebuild switch --flake /etc/nixos/#desktop";
      cleanup = "nix-collect-garbage -d && sudo nix-collect-garbage -d";
    };

    # ---- Functions & Interactive Init ----
    initExtra = ''
      # Append to history immediately after every command
      PROMPT_COMMAND="history -a\''${PROMPT_COMMAND:+; $PROMPT_COMMAND}"

      # Utility Functions
      backup() {
        if [ -z "$1" ] || [ ! -e "$1" ]; then
          echo "usage: backup <file>" >&2
          return 1
        fi
        cp -- "$1" "$1.bak"
      }

      copy() {
        if [ "$#" -eq 2 ] && [ -d "$1" ]; then
          command cp -r -- "$1" "$2"
        else
          command cp -- "$@"
        fi
      }
    '';
  };
  }
