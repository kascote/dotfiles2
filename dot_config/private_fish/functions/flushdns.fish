function flushdns --wraps='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder' --description 'alias flushdns=sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
  sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder $argv; 
end
