#!/bin/sh
export GPU_USE_SYNC_OBJECTS=1
export DISPLAY=`echo $DISPLAY | sed 's/\.[0-9]//'`
export COMPUTE=$DISPLAY
java -cp target/libs/*:target/DiabloMiner-0.0.1-SNAPSHOT.jar -Djava.library.path=target/libs/natives/solaris com.diablominer.DiabloMiner.DiabloMiner $@
