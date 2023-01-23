unbind-key -n C-a
set -g prefix ^A
set -g prefix2 F12
bind a send-prefix

# Forward C-a to bash on second press
bind C-a send-prefix


# Split vertically
unbind %
unbind v
bind v split-window -h -c "#{pane_current_path}"

# Split horizontally
unbind '"'
unbind h
bind h split-window -v -c "#{pane_current_path}"

# Navigating panes (normal layer)
bind -n M-h select-pane -L
bind -n M-j select-pane -D
bind -n M-k select-pane -U
bind -n M-l select-pane -R

# Resise panes
bind -n M-H resize-pane -L 5
bind -n M-J resize-pane -D 5
bind -n M-K resize-pane -U 5
bind -n M-L resize-pane -R 5
