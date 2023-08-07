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
#bind -n C-h select-pane -L
#bind -n C-j select-pane -D
#bind -n C-k select-pane -U
#bind -n C-l select-pane -R

# Resize panes
#bind -n C-H resize-pane -L 5
#bind -n C-J resize-pane -D 5
#bind -n C-K resize-pane -U 5
#bind -n C-L resize-pane -R 5
