if type -q direnv
  # Execute direnv if it exists
  direnv hook fish | source
end
