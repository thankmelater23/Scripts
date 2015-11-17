find "${SRCROOT}" \( -name "*.h" -or -name "*.m" \) -and \( -path "${SRCROOT}/Pods/*" -prune -o -print0 \) | xargs -0 wc -l | awk '$1 > 400 && $2 != "total" {for(i=2;i<NF;i++){printf "%s%s", $i, " "} print $NF ":1: warning: File more than 400 lines (" $1 "), consider refactoring." }'
#Sends a warning after x amount of lines of codes to tell that the code is to complex or getting complex in i think a class or function