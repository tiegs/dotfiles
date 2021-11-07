function gcm --wraps='git commit --message' --description 'alias gcm=git commit --message'
  git commit --message $argv; 
end
