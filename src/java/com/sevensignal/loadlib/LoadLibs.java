package com.sevensignal.loadlib;

public class LoadLibs {

  static {
      System.loadLibrary("7mos");
      System.loadLibrary("mos7java");
  }

  public static void main(String[] argv) {
    System.out.println("Libraries should be loaded if this message displays");
  }
}
