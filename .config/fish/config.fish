if status is-interactive
    # Commands to run in interactive sessions can go here
    #/usr/bin/neofetch

    # Check if tmux is already running
    if test -z $TMUX
      /usr/bin/neofetch
    else
      # If not start tmux
      test -z $TMUX; and exec tmux
    end

    #test -n $TMUX; and exec neofetch

    # Automatically run tmux (as long as its not already running)
    #test -z $TMUX; and exec tmux
end
