set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'o0th/tmux-nova'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'catppuccin/tmux'
set -g @catppuccin_flavour 'mocha' # or frappe, macchiato, mocha

bind-key r source-file ~/.tmux.conf \; display-message "tmux.conf reloaded."
set-option -g prefix C-j
set-option -g prefix2 C-f


# act like vim 
setw -g mode-keys vi
set  -g mouse on

# Use Alt key to switch pane without prefix
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# Split windows 
bind-key v split-window -h 
bind-key h split-window -v 

#Shift key to switch windows bind -n S-Left previous-window
bind -n S-Right next-window
###      THEMES ###


#nova theme 
set -g @plugin 'o0th/tmux-nova'
set -g @nova-nerdfonts true
set -g @nova-nerdfonts-left 
set -g @nova-nerdfonts-right 
set -g @nova-pane-active-border-style "#44475a"
set -g @nova-pane-border-style "#282a36"
set -g @nova-status-style-bg "#4c566a"
set -g @nova-status-style-fg "#d8dee9"
set -g @nova-status-style-active-bg "#89c0d0"
set -g @nova-status-style-active-fg "#2e3540"
set -g @nova-status-style-double-bg "#2d3540"
set -g @nova-pane "#I#{?pane_in_mode,  #{pane_mode},}  #W"
set -g @nova-segment-mode "#{?client_prefix,Ω,ω}"
set -g @nova-segment-mode-colors "#78a2c1 #2e3440"
set -g @nova-segment-whoami "#(whoami)@#h"
set -g @nova-segment-whoami-colors "#78a2c1 #2e3440"
set -g @nova-rows 0
set -g @nova-segments-0-left "mode"
set -g @nova-segments-0-right "whoami"

# use this next line on the bottom of the file
run '~/.tmux/plugins/tpm/tpm'

