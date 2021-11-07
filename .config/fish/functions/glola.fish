function glola --wraps='git log --graph --decorate --pretty=oneline --abbrev-commit --all' --wraps='git log --graph --decorate --oneline --abbrev-commit --all' --description 'alias glola=git log --graph --decorate --oneline --abbrev-commit --all'
  git log --graph --decorate --oneline --abbrev-commit --all $argv; 
end
