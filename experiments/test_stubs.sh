#/bin/sh

FUNCTIONS=`cat ${1} | grep "^[^ ].* .*(.*);$"`

echo ${FUNCTIONS} | gsed 's/; /;\n/g'
# | sed 's/^\([^ ].*\) \(.*\)(\(.*\));$/\/**\n/g'

