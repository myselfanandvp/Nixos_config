{ config, pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      # ── Google / Noto fonts ─────────────────────────────────────
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      google-fonts
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts


      # Noto language/script coverage
      noto-fonts-extra

      # ── Liberation fonts ────────────────────────────────────────
      liberation_ttf
      liberation_ttf_bin

      # ── Nerd Fonts ──────────────────────────────────────────────
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

      # ── Emoji / symbol fonts ────────────────────────────────────
      twemoji-color-font
      noto-fonts-color-emoji
      noto-fonts-monochrome-emoji


      # ── Other broad Unicode coverage ────────────────────────────
      dejavu_fonts
      unifont
      unifont_upper
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        sansSerif = [
          "Noto Sans"
          "Noto Sans CJK"
        ];

        serif = [
          "Noto Serif"
          "Noto Serif CJK"
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
