# https://github.com/moofia/rancid-addons

# rancid working copy
RANCID_VAR='/home/rancid/var'

_devices() {
  local curw
  COMPREPLY=()
  devices=".*"
  curw=${COMP_WORDS[COMP_CWORD]}
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  case "$1" in
    clogin)   devices="acme|arista|cat5|css|force10|f5|erx|mrtd|mrv|cisco-nx|procket|cisco|redback|netopia|extreme|cisco-xr|zebra" ;;
    hlogin)   devices="agm||hp|smc";;
    tntlogin) devices="tnt";;
    rivlogin) devices="enterasys|riverstone";;
    nslogin)  devices="netscaler";;
    nlogin)   devices="netscreen";;
    jlogin)   devices="juniper";;
    htlogin)  devices="hitachi";;
    flogin)   devices="foundry";;
    fnlogin)  devices="fortigate";;
    elogin)   devices="ezt3";;
    blogin)   devices="baynet";;
    avologin) devices="avocent";;
    alogin)   devices="alteon";;
    *)        devices="" ;;
  esac
  COMPREPLY=($(compgen -W '$(cat $RANCID_VAR/*/router.db | egrep "$devices" | sed 's/:.*//' | sort -u)' -- $curw))
  return 0
}
complete -F _devices -o dirnames ssh telnet traceroute ping clogin hlogin tntlogin rivlogin nslogin nlogin jlogin htlogin flogin fnlogin elogin blogin avologin alogin
