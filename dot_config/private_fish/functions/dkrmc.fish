function dkrmc --description 'remove exited containers'
    set --local exited (docker ps -a -f status=exited -q)
    if string length --q $exited
      docker rm $exited
    end
end
