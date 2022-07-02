function dkcp --wraps='docker container prune' --description 'alias dkcp=docker container prune'
  docker container prune $argv; 
end
