
{ config, pkgs, inputs, ... }:

{
  programs.noctalia = {
    enable = true;

    settings = {
      # Audio
      audio = {
        enable_sounds = true;
      };

      # Wallpaper
      wallpaper = {
        transition = [
          "fade"
        ];
      };

      # Backdrop
      backdrop = {
        blur_intensity = 0.16;
        tint_intensity = 0.2;
      };

      # Bar
      bar = {
        default = {
          background_opacity = 0.88;
          border_width = 1.5;

          end = [
            "tray"
            "notifications"
            "clipboard"
            "network"
            "bluetooth"
            "widget_3"
            "volume"
            "brightness"
            "battery"
            "control-center"
            "session"
          ];

          margin_edge = 1;
          radius = 5;
          reserve_space = false;
          shadow = false;
          smart_auto_hide = true;

          start = [
            "launcher"
            "wallpaper"
            "workspaces"
            "cpu"
            "bar"
            "media"
          ];
        };
      };

      # Brightness
      brightness = {
        enable_ddcutil = true;
        sync_all_monitors = true;
      };

      # Desktop Widgets
      desktop_widgets = {
        enabled = false;
        schema_version = 2;
        widget_order = [];

        grid = {
          cell_size = 24;
          major_interval = 4;
          visible = true;
        };

        widget = {};
      };

      # Dock
      dock = {
        active_monitor_only = true;
        border_width = 1.5;
        enabled = true;
        icon_size = 25;
        inactive_scale = 1.0;
        item_spacing = 10;
        launcher_position = "start";
        layer = "overlay";
        magnification = false;
        margin_edge = 2;

        pinned = [
          "kitty"
          "app.zen_browser.zen"
          "helium"
          "com.mitchellh.ghostty"
        ];

        radius = 0;
        radius_bottom_left = 5;
        radius_bottom_right = 5;
        radius_top_left = 5;
        radius_top_right = 5;

        reserve_space = false;
        shadow = false;
        show_dots = true;
        smart_auto_hide = true;
      };

      # Hot Corners
      hot_corners = {
        top_left = {
          action = "window_switcher";
        };
      };

      # Idle
      idle = {
        behavior_order = [
          "lock"
          "screen-off"
          "lock-and-suspend"
        ];

        behavior = {
          lock = {
            action = "lock";
            enabled = false;
            timeout = 600.0;
          };

          lock-and-suspend = {
            action = "lock_and_suspend";
            enabled = true;
            timeout = 900.0;
          };

          screen-off = {
            action = "screen_off";
            enabled = true;
            timeout = 660.0;
          };
        };
      };

      # Location
      location = {
        auto_locate = true;
      };

      # Night Light
      nightlight = {
        enabled = true;
      };

      # Notifications
      notification = {
        background_opacity = 0.7;
        offset_y = 40;
      };

      # OSD
      osd = {
        background_opacity = 1.0;
        offset_y = 40;
        position_vertical = "bottom_center";
      };

      # Plugins
      plugins = {
        # Current official Noctalia plugin repository
        sources = [
          {
            enabled = true;
            name = "Official Noctalia Plugins";
            url = "https://github.com/noctalia-dev/official-plugins";
          }
        ];

        states = {
          catwalk = {
            enabled = true;
            sourceUrl = "https://github.com/noctalia-dev/official-plugins";
          };
        };
      };

      # Shell
      shell = {
        font_family = "JetBrainsMono NF SemiBold";
        polkit_agent = true;

        launcher = {
          categories = false;
        };

        panel = {
          control_center_placement = "floating";
          transparency_mode = "soft";
          wallpaper_placement = "floating";
        };
      };

      # Theme
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Ayu";
        community_palette = "Catppuccin Mocha Sapphire";
        wallpaper_scheme = "m3-fruit-salad";

        templates = {
          builtin_ids = [
            "alacritty"
            "btop"
            "cava"
            "gtk3"
            "gtk4"
            "ghostty"
            "kcolorscheme"
            "kitty"
            "mango"
            "niri"
            "qt"
            "starship"
          ];

          community_ids = [
            "zen-browser"
            "fastfetch"
            "zathura"
            "yazi"
          ];
        };
      };

      # Widgets
      widget = {
        bar = {
          type = "yuuto/calculator:bar";
        };

        clock = {
          format = "{:%I:%M %p}";
        };

        control-center = {
          glyph = "settings";
        };

        media = {
          font_family = "JetBrainsMonoNL NF Medium";
          font_weight = 500;
        };

        widget_3 = {
          type = "autumn/network-toolkit:widget";
        };
      };
    };
  };
}
