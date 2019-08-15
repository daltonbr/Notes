# Python Tutorial for Programmers

Python Tutorial for Programmers - Python Crash Course 

by **Mosh Hamedani** - [twitter.com/moshhamedani](twitter.com/moshhamedani)
[codewithmosh.com](codewithmosh.com)

This is my notes for a course in Python3 (aimed at programmers with some experience)

[**Python Tutorial for Programmers on Youtube**](https://www.youtube.com/watch?v=f79MRyMsjrQ)

## Author

## Python Enhancement Proposals - PEP's

[https://www.python.org/dev/peps/](https://www.python.org/dev/peps/)

[PEP 8](https://www.python.org/dev/peps/pep-0008/) is the most famous of the PEP's, this is a proposal to enhance **Style Guide** for Python code.

## Implementations

There is the Python **language** (rules) and the python **implementations** (programs).

Some Python implementations are:

* **CPython** (written in C) (the default implementation)
* **Jython** - Java
* **IronPython** - C#
* **PyPy** - subset of Python

Features are implemented first in CPython and they rolled out to other implementations.
Certain features may not be implemented in all implementations or behave a differently.

One reason to consider using some other implementation is when we want to use other languages in conjunction with Python, i.e. if we want to use C# into Python we could use IronPython.

## How Python is executed

For **CPython**, like Java, the python language is compiled to an intermediary Bytecode format (Python Bytecode) which are passed to a Python Virtual Machine (implemented for each OS) and this VM turn this code into Machine Code.

With **Jython**, out Python code is compiled for Java Bytecode (instead of Python Bytecode). This way we can import some Java code when using Jython.

---

Reading next: [Python Basics](./PythonBasics.md)
