#!/bin/bash

#export LD_LIBRARY_PATH="$HOME/lib:$LD_LIBRARY_PATH"
#export DYLD_LIBRARY_PATH="$PWD/build/lib:$DYLD_LIBRARY_PATH"
#echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH"
#echo "DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH"

#java -cp .:build:build/7mos.jar -Djava.library.path=$LD_LIBRARY_PATH com.sevensignal.loadlib.LoadLibs
#java -cp .:build:build/7mos.jar -Djava.library.path=$DYLD_LIBRARY_PATH:build/lib com.sevensignal.loadlib.LoadLibs
#java -cp .:build:build/7mos.jar -Djava.library.path=$DYLD_LIBRARY_PATH com.sevensignal.loadlib.LoadLibs
#java -cp .:build:build/7mos.jar -Djava.library.path=$HOME/lib com.sevensignal.loadlib.LoadLibs

# export JNI_LIB_PATH=$PWD/build/lib
# echo "JNI_LIB_PATH=$JNI_LIB_PATH"
# java -cp .:build:build/7mos.jar:$JNI_LIB_PATH -Djava.library.path=$DYLD_LIBRARY_PATH:$JNI_LIB_PATH com.sevensignal.loadlib.LoadLibs

#java -cp .:build:build/7mos.jar -agentpath:$PWD/build/lib/libmos7java.dylib com.sevensignal.loadlib.LoadLibs

java -cp .:build:build/7mos.jar com.sevensignal.loadlib.LoadLibs
