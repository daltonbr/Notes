# CSharp - Test-Driven Development (TDD)

[Course on Linkedin Learning](https://www.linkedin.com/learning/c-sharp-test-driven-development-2)

TDD - **Process that uses unit tests to drive the design of software.**

Test-driven development is a methodology for creating more robust code. Among other benefits, test-driven development (or TDD) allows you to catch bugs early and decouple code, making it more modular and scalable. Applying TDD principles to C# programming is a win-win for developers.

In this course, Reynald Adolphe explains the principles of test-driven development and shows how to apply them to two different C# workflows. First, he creates a new test-driven project. He writes the test cases before the code to drive the design of the program. In the second scenario, he writes test cases for an existing C# project, to find bugs before it goes live. Along the way, Reynald uses Microsoft's MSTest, but he also introduces other testing tools (such as the unit testing framework xUnit and the mocking framework Moq) and theories (such as the red-green-refactor mantra and SOLID principles) that make test-driven development so efficient.

## Learning Objectives

* Different approaches to testing
* Using testing tools and mocking frameworks
* Creating a simple C# test-driven project
* Adding a failing test
* Updating tests to pass
* Refactoring code
* Using Moq to test data

## Different kind of test approaches

* Acceptance testing
* Black box testing
* Compatibility testing
* Conformance testing
* Functional testing
* Integration testing
* Load testing
* Regression testing
* Smoke testing
* System testing
* Unit testing
* White box testing

## Unit testing

Probably the most famous and used

Tiny testable parts of a program independently tested for expected functionality.

### Advantages

* Clear intentions
* Encourages decoupling
* Easier to catch bugs early on
* Forces writing test cases early and lessens chance of missing test cases later
* Help achieve **YAGNI**, or "you ain't gonna need it"

## Red, Green, and Refactor

1. **Red** - creating a test that will fail
2. **Green** - updating a test to pass
3. **Refactor** - updating your code to meet coding standards and minimize duplication

## Refactoring: A deeper look

. | SOLID
--- | --- | ---
**S** | Single responsibility principle (SRP)
**O** | Open/Closed principle (OCP)
**L** | Liskov substitution principle (LSP)
**I** | Interface segregation principle (ISP)
**D** | Dependency inversion principle (DIP)

### Single responsibility principle

A class should have one, and only one, reason to change.

### Open/Closed principle (OCP)

you should be able to extend a classes behavior, without modifying it.

### Liskov substitution principle

Derived classes must be substitutable for their base classes.

### Interface segregation principle

Make fine-grained interfaces that are client specific.

### Dependency inversion principle

Depend on abstractions, not on concretions.

## Useful tools for the CSharp TDD

### Different kinds of testing tools

1. **MSTest** - official unit tester by Microsoft (Better for integration tests)
2. **NUnit** - open-source unit-testing framework inspired by Java's JUnit. www.nunit.org (fasts and works in x86 and x64)
3. **xUnit** - open-source unit tester developed for .Net https://xunit.github.io

### Mocking frameworks

1. **FakeItEasy** - mocking framework where objects are considered fakes but usage determines whether they're mocks or stubs.
[https://fakeiteasy.github.io]
2. **NSubstitute** - mocking framework syntax that is more succinct and concise [https://nsubstitute.github.io]
3. Moq - mocking library developed from scratch to take full advantage of .Net [https://github.com/moq/moq4]
