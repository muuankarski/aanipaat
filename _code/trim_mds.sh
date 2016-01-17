#!/bin/bash

# oldstring='\footnotesize{\textit{Data after 2015 are projections}}\vspace{1mm}'
# newstring='<i>Data after 2015 are projections</i>'
# grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/regional15_web/regions | xargs sed -i s@$oldstring@$newstring@g

oldstring='\\footnotesize{\\textit{Data\safter\s2015\sare\sprojections}}\\vspace{1mm}'
newstring='</br><i>Dataafter2015areprojections</i>'
grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/regional15_web/regions | xargs sed -i s@$oldstring@$newstring@g


#oldstring='vspace'
#newstring='</i>'
#grep -rl $oldstring /home/markus/btsync/faosync/pocketbooks/regional15_web/regions | xargs sed -i s@$oldstring@$newstring@g
