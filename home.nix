{config, pkgs, lib, forge-of-ideas,...}:
{
    home.username = "menezess42";
    home.homeDirectory = "/home/menezess42";
    home.stateVersion = "25.11"; # Please read the comment before changing.
    nixpkgs.config.allowUnfree=true; imports = [
        ./modules/zsh.nix
        ./modules/tmux.nix
        ./modules/gtk.nix
        ./modules/stylix.nix
        ./modules/firefox.nix
    ];
    zsh.enable=true; tmux.enable=true;

    fonts.fontconfig.enable = true;

    home.packages = with pkgs; [
        forge-of-ideas.packages.x86_64-linux.default
        # neovim
        xclip
        libreoffice
        libresprite
        wl-clipboard
        lua-language-server
        eza
        bat
        cmatrix
        direnv
        terminator
        chromium
        discord
        nvtopPackages.full
        lshw
        thunderbird
        emacs
        neofetch
        btop
        pavucontrol
        arandr
        xfce.thunar
        xfce.tumbler
        gvfs
        mupdf
        spotify
        gcc
        ripgrep
        networkmanagerapplet
        grimblast
        obsidian
        qalculate-gtk
        unzip
        zip
        git
        # Emacs Vterm
        cmake
        gnumake
        libtool
        automake
        pkg-config
        libvterm
        # pandoc
        pandoc
        python311Packages.pandocfilters # (opcional, explicado abaixo)
        vscode
        # OBStudio
        xdg-desktop-portal-wlr
        # xdg-desktop-portal-hyprland
        xdg-desktop-portal-gtk
        wtype
        # Coming from configuration.nix
        qt6Packages.qtwayland
        qt6.qtwayland
        waybar
        kitty
        rofi
        mako
        swww
        hyprlock
        wl-clipboard
        grim
        slurp
        krita
        papirus-icon-theme
        # Fontes
        inter
        noto-fonts
        noto-fonts-color-emoji
        noto-fonts-cjk-sans
        fira-code
        fira-code-symbols
        mplus-outline-fonts.githubRelease
        # dina-font
        # proggyfonts
        nerd-fonts.fira-code
        nerd-fonts.droid-sans-mono
        #Player
        playerctl
        shotcut
        jetbrains-mono
        roboto
        roboto-flex
        roboto-mono
        roboto-serif
        roboto-slab
        trash-cli
    ];

    xdg.portal = {
        enable = true;
        extraPortals = with pkgs; [xdg-desktop-portal-gtk];
        config.common.default = "*";
    };
    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;


    programs.obs-studio = {
        enable = true;
        # optional Nvidia hardware acceleration
        package = (
            pkgs.obs-studio.override {
                cudaSupport = true;
            }
        );
        plugins = with pkgs.obs-studio-plugins; [
            wlrobs
            obs-backgroundremoval
            obs-pipewire-audio-capture
            obs-gstreamer
            obs-vkcapture
            wlrobs
        ];
    };

    #dotfiles
    home.file.".config/mako".source = ./dotfiles/mako;
    home.file.".config/waybar".source = ./dotfiles/waybar;
    home.file.".config/rofi".source = ./dotfiles/rofi;
    home.file.".config/kitty".source = ./dotfiles/kitty;
    home.file.".config/hypr".source = ./dotfiles/hypr;

}
