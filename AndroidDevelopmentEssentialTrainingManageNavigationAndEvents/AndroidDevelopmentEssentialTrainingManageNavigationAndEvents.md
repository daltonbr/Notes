# Android Development Essential Training: Manage Navigation and Events

by David Gassner

## What is Java? 

### History

* Started in 1991
* Portable language
* original name: Oak
* Original tagline: "Write once, run everywhere"
* 1995 first release
* 1996 JDK 1.0
* 1997 JDBC
* 1998 renamed to J2SE (Java 2 **Standard Edition**)
* 2000 HotSpot JVM
* 2002 J2SE 1.4 Regex, ipv6, XML
* 2004 J2SE 5.0 (aka 1.5), generics, enums, foreach
* 2006 Java SE 6, performance 6, GUI improvancess
* the pace was slowed a little bit
* 2010 a major event: ORACLE BOUGHT SUN!
* 2011 Java SE 7, strings in switch, Try-catch improved
* 2014 Java SE 8, Lambda, method references, Collections with streams, Nashorn JavaScript Engine
* 2017 Java SE 9 JShell environment, Improved Javadoc, Runtime library modularization, Process API updates, Private interface methods

### Principles of Java

* Simple, OOP, and familar
* Robust and secure
* Architecture neutral and portable
* High performance
* Interpreted, threaded, and dynamic
* Interpreted language
* Compiles to bytecode instead of machine language
* Applications are portable between platforms without recompiling
* There are different JVM versions from other vendors, not onlu from Oracle
* Core runtime and additional libraries
* In **Android**, the JVM is substituted by ART (Android Run Time), and the bytecode is called DEX.
* Java has some syntatictal similarities to C++, but at its core it's a very different language

### Java Editions

**JSE** (Standard Edition), comes with the JRE (Java Runtime Environment) and has the Core language

**JEE** (Java Enterprise Edition) is recomended for industrial-strengh web applications

**JME** (java Micro Edition), Microcontrollers, sensors, and mobile devices (except Android)

**JDK** (Development Kit)

Includes tools for compilation and packaging for free from Oracle

java: runtime
javac: compiler
javadocs: documentation
jar: archive builder

### Java Classes

* All code is defined in classses
* `.java` extension
* `javac` to compiles into bytecode
* `java` to run this bytecode
* name of the class matches the name of the class
* in a command line application, the JVM looks for this Main method, with the same signature

```java
package com.example
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello from java!");
    }
}
```

In Java 9 we have the JShell command

* Java is a **sensitive language**
* White space, tabsm and line feeds are collapsed by compiler.
* Statements must end with a semicolon
* Classes start with an uppercase character
* Methods and variables start with a lowercase character
* Constants are all uppercase (it's not a "real" constant...)
  * `public static final String FIRSTNAME = "Dalton"`
  * static: part of the class, not and instance of it.
  * final: cannot be changed

### Memory management and Garbage Collector

* Memory for objects is allocated automatically
* Local variables and function calls are stored in stack
* Objects and member variables are stored in heap
* Objects are retained in memory until dereferenced
* GC runs in its own thread
* GC is managed by the VM
* GC can destroy dereferenced objects, but not required
* You cannot force GC

There is two memories: stack and heap
Stack memory is somewhat faster, heap is a little bit slower, but still more dynamic

There are four GC implementations in th Java HotSpot VM

1. Serial: single threaded
2. Parallel (aka throughput): multithreaded
3. Garbage-First (G1): for server environments
4. Concurrent Mark Sweep (CMS): shorter pauses, shares resources

Android (*)ART) has its own GC



