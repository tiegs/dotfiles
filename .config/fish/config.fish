if status is-interactive
    # Commands to run in interactive sessions can go here
    /usr/bin/neofetch

    # Currently byobu is started by the terminal command (kitty byobu-tmux new)
    #if [ "$TERM_PROGRAM" = "guake" ]
    #  # No byoby in guake
    #  /usr/bin/neofetch
    #
    #else if test -z "$TMUX"
    #  # Start new byobu session per terminal that is not running a tmux session yet
    #  byobu-tmux new
    #else
    #  # Run neofetch in each session
    #  /usr/bin/neofetch
    #end

end
#status --is-login; and status --is-interactive; and exec byobu-launcher

fish_add_path ~/.local/bin
