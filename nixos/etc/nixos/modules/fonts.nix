{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      # ── Google / Noto / Core Fonts ──────────────────────────────
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      noto-fonts-extra
      google-fonts
      
      # ── Base Monospace Fonts ────────────────────────────────────
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
      liberation_ttf
      dejavu_fonts

      # ── Nerd Fonts (Full Patched Fonts) ─────────────────────────
      # Note: 'symbols-only' is intentionally excluded to avoid symbol lookup collisions in Kitty
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.fira-mono
      nerd-fonts.hack
      nerd-fonts.inconsolata
      nerd-fonts.iosevka
      nerd-fonts.iosevka-term
      nerd-fonts.meslo-lg
      nerd-fonts.mononoki
      nerd-fonts.roboto-mono
      nerd-fonts.source-code-pro
      nerd-fonts.ubuntu
      nerd-fonts.ubuntu-mono
      nerd-fonts.dejavu-sans-mono
      nerd-fonts.space-mono
      nerd-fonts.caskaydia-cove
      nerd-fonts.caskaydia-mono
      nerd-fonts.droid-sans-mono
      nerd-fonts.gohu
      nerd-fonts.lilex
      nerd-fonts.profont
      nerd-fonts.terminess-ttf
      nerd-fonts.victor-mono
      nerd-fonts.monaspace

      # ── Emoji & Unicode Coverage ────────────────────────────────
      twemoji-color-font
      unifont
      unifont_upper
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        sansSerif = [
          "Noto Sans"
          "Noto Sans CJK HK"
        ];

        serif = [
          "Noto Serif"
          "Noto Serif CJK HK"
        ];

        monospace = [
          "JetBrainsMono Nerd Font"
          "Noto Sans Mono"
        ];

        emoji = [
          "Noto Color Emoji"
          "Twemoji"
        ];
      };
    };
  };
}
