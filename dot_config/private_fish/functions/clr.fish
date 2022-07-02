function clr
  set -l esc ""
  set -l names blackf redf greenf yellowf bluef purplef cyanf whitef blackb redb greeb yellowb blueb purpleb cyanb whiteb bon boff ion ioff ulon uloff invon invoff rst
  set -l codes '[30m' '[31m' '[32m' '[33m' '[34m' '[35m' '[36m' '[37m' '[40m' '[41m' '[42m' '[43m' '[44m' '[45m' '[46m' '[47m' '[1m' '[22m' '[3m' '[23m' '[4m' '[24m' '[7m' '[27m' '[0m'

  set -l bg $argv[1]
  set -l fg $argv[2]

  if set -l index (contains -i -- $bg $names) # `set` won't modify $status, so this succeeds if `contains` succeeds
    echo -n $esc$codes[$index]
  end

  if set -l index (contains -i -- $fg $names) # `set` won't modify $status, so this succeeds if `contains` succeeds
    echo -n $esc$codes[$index]
  end
end

