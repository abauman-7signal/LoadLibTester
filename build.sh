#!/bin/bash

BUILD_DIR="build"
#INSTALL_LIB_DIR="$HOME/lib"
INSTALL_LIB_DIR="./"
MOS_BUILD_DIR="../MOS/build"

function deleteBuildDir() {
  rm -rf $BUILD_DIR/*
}

function initBuildArtifactFolder() {
  mkdir -p $BUILD_DIR
#  mkdir -p $BUILD_LIB_DIR
}

function copyLibs() {
  cp -v $MOS_BUILD_DIR/mac-jni-lib/*dylib $INSTALL_LIB_DIR
  cp -v $MOS_BUILD_DIR/mac-lib/*dylib $INSTALL_LIB_DIR
#  cp -v $MOS_BUILD_DIR/mac-lib/*dylib .
}

function copyJar() {
  cp -v $MOS_BUILD_DIR/java-mac/*jar $BUILD_DIR
}

function buildTester() {
  javac -d $BUILD_DIR src/java/com/sevensignal/loadlib/LoadLibs.java
}

deleteBuildDir
initBuildArtifactFolder
copyLibs
copyJar
buildTester
