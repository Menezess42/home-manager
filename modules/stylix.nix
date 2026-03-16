{ config, pkgs, ... }:

{
  stylix = {
    enable = true;

    image = ../wall.png;
    polarity = "dark";

    override = {
      base00 = "22303c";
      base01 = "1b263b";
      base02 = "0d1b2a";
      base03 = "415a77";
      base04 = "6c7a89";

      base05 = "e6d5b8";
      base06 = "cfc8b5";
      base07 = "ece6d8";

      base08 = "cc6e2e";
      base09 = "f05a22";

      base0A = "c28840";

      base0B = "00d2c3";
      base0C = "48c4f8";

      base0D = "48c4f8";

      base0E = "6c7a89";

      base0F = "a65a2e";
    };

    fonts = {
      sizes = {
        applications = 14;
        terminal = 14;
        desktop = 14;
      };

      sansSerif = {
        name = "Inter";
        package = pkgs.inter;
      };

      serif = {
        name = "Inter";
        package = pkgs.inter;
      };
    };

    targets = {
      kitty.enable = false;
      neovim.enable = false;

      gtk = {
        enable = true;

        extraCss = ''
        *:focus {
          box-shadow: none;
          border-color: transparent;
        }

        button:focus,
        entry:focus,
        combobox:focus {
          border-color: #CC6E2E;
          box-shadow: 0 0 0 1px #CC6E2E;
        }

        row:selected,
        menuitem:selected,
        tab:selected {
          background-color: #1B263B;
          color: #48C4F8;
        }

        combobox popover menuitem:selected {
          background-color: #1B263B;
          color: #48C4F8;
        }

        scale highlight {
          background-color: #415A77;
        }

        scale slider {
          background-color: #6C7A89;
        }

        label {
          color: #E6D5B8;
        }

        .accent,
        .suggested-action {
          border-color: #CC6E2E;
        }
        '';
      };

      firefox.profileNames = [ "default" ];
    };

    autoEnable = true;
  };
}
# { config, pkgs, ... }:
#
# {
#     stylix = {
#         enable = true;
#
#         image = ../wall.png;
#         polarity = "dark";
#
#         override = {
#             base00 = "22303c";
#             base01 = "1b263b";
#             base02 = "0d1b2a";
#             base03 = "415a77";
#             base04 = "6c7a89";
#             # base05 = "#e6d5b8";
#             base05 = "48c4f8";
#             base06 = "cfc8b5";
#             base07 = "ece6d8";
#             base08 = "cc6e2e";
#             base09 = "c79a2b";
#             # base0A = "#ddaa33";
#             base0A = "ddaa33";
#             base0B = "00d2c3";
#             base0C = "48c4f8";
#             # base0D = "#48c4f8";
#             base0D = "c79a2b";
#             base0E = "6c7a89";
#             base0F = "a65a2e";
#         };
#
#         fonts = {
#             sizes = {
#                 applications = 14;
#                 terminal = 14;
#                 desktop = 14;
#             };
#
#             sansSerif = {
#                 name = "Inter";
#                 package = pkgs.inter;
#             };
#
#             serif = {
#                 name = "Inter";
#                 package = pkgs.inter;
#             };
#
#         };
#         targets = {
#             kitty.enable = false;
#             neovim.enable = false;
#             gtk = {
#                 enable = true;
#
#                 extraCss = ''
#                 /* ============================= */
#                 /* 1. Remover foco global feio   */
#                 /* ============================= */
#
#                 *:focus {
#                   box-shadow: none;
#                   border-color: transparent;
#                 }
#
#                 button:focus,
#                 entry:focus,
#                 combobox:focus {
#                   border-color: #c79a2b;
#                   box-shadow: 0 0 0 1px #c79a2b;
#                 }
#
#                 /* ============================= */
#                 /* 2. Seleção legível (não dourada) */
#                 /* ============================= */
#
#                 row:selected,
#                 menuitem:selected,
#                 tab:selected {
#                   background-color: #1B263B;
#                   color: #48c4f8;
#                 }
#
#                 combobox popover menuitem:selected {
#                   background-color: #1B263B;
#                   color: #48c4f8;
#                 }
#
#                 /* ============================= */
#                 /* 3. Slider neutro (não azul vibrante) */
#                 /* ============================= */
#
#                 scale highlight {
#                   background-color: #415A77;
#                 }
#
#                 scale slider {
#                   background-color: #6C7A89;
#                 }
#
#                 /* ============================= */
#                 /* 4. Texto padrão mais vibrante */
#                 /* ============================= */
#
#                 label {
#                   color: #48c4f8;
#                 }
#
#                 /* ============================= */
#                 /* 5. Dourado só como realce estrutural */
#                 /* ============================= */
#
#                 .accent,
#                 .suggested-action {
#                   border-color: #c79a2b;
#                 }
#                 '';
#             };
#             firefox.profileNames = [ "default" ];
#         };
#
#         autoEnable = true;
#     };
# }
