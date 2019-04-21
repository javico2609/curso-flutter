library foo_lib;
import 'dart:core';
import 'dart:mirrors';

class Foo {
  // class name can be a symbol
  m1() {
    // method name can be a symbol
    print("Inside m1");
  }
  m2() {
    print("Inside m2");
  }
  m3() {
    print("Inside m3");
  }
}

bool existClassAvailableInLibrary(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);

  if (libMirror != null) {
    libMirror.declarations.forEach((s, d) => print(s));

    bool exist = libMirror.declarations.containsKey(className);

    if(exist) {
      ClassMirror classMirror = libMirror.declarations[className];
      print("No. of methods found is ${classMirror.instanceMembers.length}");
      classMirror.instanceMembers.forEach((s, v) => print(s));
    }

    return exist;
  }

  return false;
}