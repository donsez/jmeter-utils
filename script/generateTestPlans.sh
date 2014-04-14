#!/bin/bash

ANUMCLIENT=( 100 1000 10000)
AQOS=(0 1 2)
ARETAIN=(true false)

for NUMCLIENT in ${ANUMCLIENT[*]}
do
for QOS in ${AQOS[*]}
do
for RETAIN in ${ARETAIN[*]}
do
        SUFFIX=$NUMCLIENT.$QOS.$RETAIN
	generating testplan.$SUFFIX.jmx
	sed  's/__NUMCLIENT__/$NUMCLIENT/g' TestPlan.tmpl.jmx | sed 's/__QOS__/$QOS/g'  | sed 's/__RETAIN__/$RETAIN/g'  > testplan.$SUFFIX.jmx
done
done
done
