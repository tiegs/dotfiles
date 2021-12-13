function ll --wraps=ls --wraps='exa -l' --wraps='exa -lg --git' --description 'alias ll=exa -lg --git'
  exa -lg --git $argv; 
end
