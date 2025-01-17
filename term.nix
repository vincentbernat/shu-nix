{ config, lib, pkgs, ... }: {
  programs.alacritty = {
    enable = true;
    settings = {
      draw_bold_text_with_bright_colors = true;

      font = {
        size = 10.5;
        normal = { family = "MesloLGS NF"; };
      };

      window = {
        decorations = false;
        opacity = 0.96;
        blur = true;
        dimensions = {
          columns = 110;
          lines = 80;
        };
        padding = {
          x = 5;
          y = 4;
        };
      };

      colors = {
        primary = {
          background = "#1a1c1c";
          foreground = "#f99d32";
        };
        normal = {
          black = "#1d1f21";
          red = "#c01c28";
          green = "#26a269";
          yellow = "#f0c674";
          blue = "#0874be";
          magenta = "#a347ba";
          cyan = "#2aa1b3";
          white = "#c5c8c6";
        };
        bright = {
          black = "#5e5c64";
          red = "#f66151";
          green = "#33da7a";
          yellow = "#e9ad0c";
          blue = "#2a7bde";
          magenta = "#c061cb";
          cyan = "#33c7de";
          white = "#ffffff";
        };

        Key_bindings = [{
          key = "N";
          mods = "Control";
          action = "SpawnNewInstance";
        }];
      };
    };
  };
}
