{ config, pkgs, ... }:

{
    home.packages = [
        pkgs.graphite-gtk-theme
        pkgs.papirus-icon-theme
        pkgs.inter
    ];

    gtk = {
        enable = true;

        iconTheme = {
            name = "Papirus";
            package = pkgs.papirus-icon-theme;
        };

    };

    dconf.settings = {
        "org/gnome/desktop/interface" = {
            color-scheme = "prefer-dark";
        };
    };
}
