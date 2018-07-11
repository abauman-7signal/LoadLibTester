#!/bin/bash

BUILD_DIR="build"

function deleteBuildDir() {
  rm -rf $BUILD_DIR/*
}

function buildTester() {
  javac -d $BUILD_DIR src/java/com/sevensignal/loadlib/LoadLibs.java
}

deleteBuildDir
buildTester
