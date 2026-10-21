{config,pkgs,inputs,...}:
{
  programs.tmux = {
    enable = true;

    terminal = "tmux-256color";

    mouse = true;

    baseIndex = 1;
    escapeTime = 0;
    historyLimit = 50000;

    extraConfig = ''
      # Clipboard
      set -g set-clipboard on

      # Reload config
      unbind r
      bind r source-file ~/.config/tmux/tmux.conf \; display-message "Config reloaded!"

      # Pane navigation
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      # ==========================================
      # DESIGN & VISUAL TWEAKS
      # ==========================================

      # Quiet Mode
      set -g visual-activity off
      set -g visual-bell off
      set -g visual-silence off
      setw -g monitor-activity off
      set -g bell-action none

      # General UI Settings
      set -ga terminal-overrides ",xterm-256color:Tc"
      set -g status-interval 2
      set -g status-position bottom
      setw -g pane-base-index 1
      set -g renumber-windows on

      # Colors & Main Background
      set -g status-style 'bg=#1a1b26,fg=#a9b1d6'

      # Pane Borders & Active Highlighting
      set -g pane-border-style 'fg=#292e42'
      set -g pane-active-border-style 'fg=#bb9af7,bold'

      # Dim inactive panes slightly
      setw -g window-active-style 'bg=#1a1b26'
      setw -g window-style 'bg=#16161e'

      # ==========================================
      # STATUS BAR
      # ==========================================

      set -g status-left-length 100
      set -g status-right-length 100

      # Left Section: Session Badge + Active Pane Title
      set -g status-left '#[fg=#15161e,bg=#7aa2f7,bold]  #S #[fg=#7aa2f7,bg=#24283b,nobold]#[fg=#7dcfff,bg=#24283b,bold]  #{pane_current_command} #[fg=#24283b,bg=#1a1b26,nobold] '

      # Right Section: Path, Time, Host
      set -g status-right '#[fg=#292e42,bg=#1a1b26]#[fg=#7dcfff,bg=#292e42,bold]  #{b:pane_current_path} #[fg=#bb9af7,bg=#292e42]#[fg=#15161e,bg=#bb9af7,bold] 󰥔 %H:%M #[fg=#7aa2f7,bg=#bb9af7]#[fg=#15161e,bg=#7aa2f7,bold] #H #[fg=#7aa2f7,bg=#1a1b26]'

      # ==========================================
      # WINDOW TABS
      # ==========================================

      setw -g window-status-separator ' '

      # Inactive Window Tab
      setw -g window-status-format '#[fg=#292e42,bg=#1a1b26]#[fg=#565f89,bg=#292e42] #I #[fg=#3b4261]#[fg=#a9b1d6,bg=#292e42] #W #[fg=#292e42,bg=#1a1b26]'

      # Active Window Tab
      setw -g window-status-current-format '#[fg=#f7768e,bg=#1a1b26]#[fg=#15161e,bg=#f7768e,bold] #I #[fg=#15161e,bg=#f7768e]#[fg=#15161e,bg=#f7768e,bold] #W #{?window_zoomed_flag,󰁌 ,}#[fg=#f7768e,bg=#1a1b26,nobold]'

      # Bell Status Window
      setw -g window-status-bell-style 'fg=#f7768e,bg=#1a1b26,bold'

      # ==========================================
      # COPY MODE / COMMAND LINE / POPUPS
      # ==========================================

      setw -g mode-style 'fg=#15161e,bg=#f7768e,bold'
      set -g message-style 'fg=#7dcfff,bg=#292e42,bold'
      set -g message-command-style 'fg=#7dcfff,bg=#292e42,bold'
      setw -g clock-mode-colour '#bb9af7'
    '';
  };
}
