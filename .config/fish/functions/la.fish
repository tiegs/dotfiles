function la --wraps='exa -al' --wraps='exa -al --git' --wraps='exa -alg --git' --description 'alias la=exa -alg --git'
    exa -alg --git $argv
end
