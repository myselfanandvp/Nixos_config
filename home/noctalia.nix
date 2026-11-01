{
  _,
  ...
}:

{
  programs.noctalia = {
    enable = true;

    settings = {
      config_version = 15;

      # Audio
      audio.enable_sounds = true;

      # Backdrop
      backdrop = {
        blur_intensity = 0.16;
        tint_intensity = 0.2;
      };

      # Bar
      bar.default = {
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
        layer = "overlay";
        margin_edge = 1;
        radius = 7;
        reserve_space = false;
        smart_auto_hide = true;
        start = [
          "launcher"
          "wallpaper"
          "workspaces"
          "cpu"
          "bar"
          "media"
          "audio_visualizer"
        ];
      };

      # Battery
      battery.warning_threshold = 50;

      # Brightness
      brightness = {
        enable_ddcutil = true;
        sync_all_monitors = true;
      };

      # Desktop widgets
      desktop_widgets = {
        schema_version = 2;
        widget_order = [ ];

        grid = {
          cell_size = 24;
          major_interval = 4;
          visible = true;
        };
      };

      # Dock
      dock = {
        border_width = 1.5;
        enabled = true;
        icon_size = 20;
        inactive_scale = 1.0;
        launcher_position = "start";
        margin_edge = 1;
        pinned = [
          "kitty"
          "brave-browser"
        ];
        radius = 10;
        radius_bottom_left = 5;
        radius_bottom_right = 5;
        radius_top_left = 5;
        radius_top_right = 5;
        reserve_space = false;
        shadow = false;
        show_dots = true;
        smart_auto_hide = true;
      };

      # Hot corners
      hot_corners.enabled = true;

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

          "lock-and-suspend" = {
            action = "lock_and_suspend";
            enabled = true;
            timeout = 900.0;
          };

          "screen-off" = {
            action = "screen_off";
            enabled = true;
            timeout = 660.0;
          };
        };
      };

      # Location
      location.auto_locate = true;

      # Lockscreen widgets
      lockscreen_widgets = {
        enabled = false;
        schema_version = 2;

        widget_order = [
          "lockscreen-login-box@HDMI-A-1"
          "lockscreen-login-box@eDP-1"
        ];

        grid = {
          cell_size = 16;
          major_interval = 4;
          visible = true;
        };

        widget = {
          "lockscreen-login-box@HDMI-A-1" = {
            box_height = 196.0;
            box_width = 720.0;
            cx = 683.00006103515625;
            cy = 586.0001220703125;
            output = "HDMI-A-1";
            placement_height = 768.0;
            placement_width = 1366.0;
            rotation = 0.0;
            type = "login_box";

            settings = {
              background_color = "surface_container";
              background_opacity = 0.88;
              background_radius = 12.0;
              center_password_text = false;
              input_opacity = 1.0;
              input_radius = 6.0;
              layout = "regular";
              show_caps_lock = true;
              show_keyboard_layout = true;
              show_login_button = true;
              show_media = true;
              show_session_buttons = true;
              show_unlock_hint = true;
              show_weather = true;
            };
          };

          "lockscreen-login-box@eDP-1" = {
            box_height = 196.0;
            box_width = 810.0;
            cx = 960.0;
            cy = 898.0;
            output = "eDP-1";
            placement_height = 1080.0;
            placement_width = 1920.0;
            rotation = 0.0;
            type = "login_box";

            settings = {
              background_color = "surface_container";
              background_opacity = 0.88;
              background_radius = 12.0;
              center_password_text = false;
              input_opacity = 1.0;
              input_radius = 6.0;
              layout = "regular";
              show_caps_lock = true;
              show_keyboard_layout = true;
              show_login_button = true;
              show_media = true;
              show_session_buttons = true;
              show_unlock_hint = true;
              show_weather = true;
            };
          };
        };
      };

      # Nightlight
      nightlight.enabled = true;

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

      # Plugin settings
      plugin_settings = {
        "noctalia/notes" = {
          panel_placement = "attached";
          panel_position = "top_right";
        };
      };
      # Plugins
      plugins.enabled = [
        "noctalia/notes"
      ];

      # Shell
      shell = {
        font_family = "JetBrains Mono SemiBold";
        polkit_agent = true;

        launcher = {
          categories = false;
          layout = "simple";
          pinned = [
            "zen"
            "com.mitchellh.ghostty"
            "brave-browser"
          ];
        };

        panel = {
          control_center_placement = "floating";
          session_placement = "floating";
          transparency_mode = "soft";
          wallpaper_placement = "floating";
        };
      };

      # Theme
      theme = {
        builtin = "Ayu";
        community_palette = "Tokyo Night Storm";
        mode = "dark";
        source = "builtin";
        wallpaper_scheme = "muted";

        templates = {
          builtin_ids = [
            "alacritty"
            "btop"
            "gtk3"
            "gtk4"
            "ghostty"
            "helix"
            "hyprland"
            "kcolorscheme"
            "kitty"
            "mango"
            "niri"
            "qt"
            "starship"
            "wezterm"
          ];

          community_ids = [
            "telegram"
            "fastfetch"
            "zathura"
            "papirus-icons"
            "herdr"
            "yazi"
          ];
        };
      };

      # Wallpaper
      wallpaper = {
        directory = "/home/anand/Pictures/Wallpapers";
        directory_dark = "/home/anand/Pictures/Wallpapers";
        directory_light = "/home/anand/Pictures/Wallpapers";
        edge_smoothness = 0.45;
        transition = [ "disc" ];
        transition_duration = 1900;
      };

      # Widgets
      widget = {
        audio_visualizer = {
          color = "secondary";
          color_1 = "tertiary";
          color_2 = "secondary";
          font_family = "JetBrains Mono Medium";
          icon_color = "tertiary";
        };

        clock.format = "{:%I:%M %P}";

        "control-center".glyph = "settings";

        media = {
          album_art_only = true;
          capsule = true;
          capsule_fill = "on_secondary";
          color = "secondary";
          font_family = "JetBrainsMonoNL NF Medium";
          font_weight = 500;
          hide_when_no_media = true;
          icon_color = "tertiary";
          max_length = 122;
          min_length = 94;
          show_progress = true;
        };

        workspaces = {
          focused_color = "tertiary";
          occupied_color = "primary";
          style = "minimal";
        };
      };
    };
  };
}
