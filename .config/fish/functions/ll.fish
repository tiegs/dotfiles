function ll --wraps=ls --wraps='exa -l' --wraps='exa -lg --git' --description 'alias ll=exa -lg --git'
  if type -q exa
    exa -lg --git $argv; 
  else
    ls -alh;
  end
end
