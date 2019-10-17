#!/bin/bash

trackpoint="TPPS/2 IBM TrackPoint"
xinput --set-prop "$trackpoint" "libinput Accel Speed" 0.5
xinput --set-prop "$trackpoint" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "$trackpoint" "libinput Natural Scrolling Enabled" 0


cd /usr/share/libinput/


#multiplier
$ cat > 50-system-lenovo.quirks <<EOF

[Lenovo T480 Trackpoint]
MatchName=*TPPS/2 IBM TrackPoint
MatchDMIModalias=dmi:*svnLENOVO:*:pvrThinkPadT480:*
AttrTrackpointMultiplier=0.4
EOF
