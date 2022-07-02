function ld --wraps='ls .* --recursive --depth 0' --description 'alias ld=ls .* --recursive --depth 0'
  ls .* --recursive --depth 0 $argv; 
end
