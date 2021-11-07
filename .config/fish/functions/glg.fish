function glg --wraps='git log --graph --decorate --pretty=oneline --abbrev-commit --all' --wraps='git log --graph --decorate --oneline --abbrev-commit --all' --wraps='git log --graph --decorate  --abbrev-commit --all' --description 'alias glg=git log --graph --decorate  --abbrev-commit --all'
  git log --graph --decorate  --abbrev-commit --all $argv; 
end
