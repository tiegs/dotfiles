if status is-interactive
    # Commands to run in interactive sessions can go here

    if [ "$TERM_PROGRAM" = "guake" ]
      # Do not start tmux in guake shell
      /usr/bin/neofetch
    else if test -z "$TMUX"
      # Start tmux if not alreay in tmux
      exec tmux
    else
      # Runs _inside_ each tmux session
      /usr/bin/neofetch
    end
      
    # Automatically run tmux (as long as its not already running)
    #test -z "$TMUX"; and exec tmux
end
