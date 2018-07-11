#!/bin/bash

BUILD_DIR="build"
INSTALL_DIR="install"
INSTALL_LIB_DIR="$INSTALL_DIR"
MOS_BUILD_DIR="../MOS/build"

function deleteInstallDir() {
  rm -rf $INSTALL_DIR
}

function initInstallFolder() {
  mkdir -p $INSTALL_DIR
}

function installLibs() {
  cp -v $MOS_BUILD_DIR/mac-jni-lib/*dylib $INSTALL_LIB_DIR
  cp -v $MOS_BUILD_DIR/mac-lib/*dylib $INSTALL_LIB_DIR
}

function installJar() {
  cp -v $MOS_BUILD_DIR/java-mac/*jar $INSTALL_DIR
}

function installTester() {
  cp -rv $BUILD_DIR/* $INSTALL_DIR
}

deleteInstallDir
initInstallFolder
installLibs
installJar
installTester
