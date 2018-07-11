#!/bin/bash

RUN_DIR="install"

cd $RUN_DIR
java -cp ./:7mos.jar com.sevensignal.loadlib.LoadLibs
