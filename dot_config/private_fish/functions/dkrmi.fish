function dkrmi --description 'remove dangling images'
    set --local dangling (docker images -f dangling=true -q)
    if string length --q $dangling
      docker rmi $dangling
    end
end
