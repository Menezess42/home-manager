{config, pkgs, lib, ... }:
{
    options = {
        tmux.enable = lib.mkEnableOption "Enable Tmux configuration";
    };

    config = lib.mkIf config.tmux.enable {
        programs.tmux = {
            enable = true; # Habilita o Tmux no sistema
            plugins = with pkgs.tmuxPlugins; [ 
            vim-tmux-navigator
            ];
                extraConfig = ''
# ----- Tecla prefix padrão -----
# Ativar suporte ao mouse
                    set -g mouse on
                    set -g default-terminal "tmux-256color"
                    set-option -ga terminal-overrides ",xterm-256color:Tc"

# ----- Movimentação entre painéis (inspirado no Vim) -----
                    bind-key h select-pane -L  # Move para o painel à esquerda
                    bind-key j select-pane -D  # Move para o painel abaixo
                    bind-key k select-pane -U  # Move para o painel acima
                    bind-key l select-pane -R  # Move para o painel à direita

                    bind-key u split-window -v
                    bind-key o split-window -h



# ----- Outras configurações -----
# Posicionar a barra de status na parte superior
                    set-option -g status-position bottom


                    set -g status-style bg=default

set -g pane-active-border-style fg="#CC6E2E"
set -g pane-border-style fg="#415A77"

set -g status-style bg="#1B263B"
set -g status-style fg="#E6D5B8"

set -g window-status-format "#I #W"
set -g window-status-style bg="#1B263B"
set -g window-status-style fg="#6C7A89"

set -g window-status-current-style bg="#CC6E2E"
set -g window-status-current-style fg="#48C4F8"

set -g status-left "#[bg=#1B263B,fg=#48C4F8] #S "
set -g status-right "#[fg=#E6D5B8] %Y-%m-%d #[fg=#48C4F8] %H:%M #[default]"
                    '';
        };
    };
}
