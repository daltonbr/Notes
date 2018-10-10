# Threading in C#

## About

[Course Link](https://www.linkedin.com/learning/threading-in-c-sharp)

2h 3m  Beginner + Intermediate  Released: March 22, 2018  

Threading is a powerful tool for developers, and having a solid grasp of how it works is key to creating high-performing applications. Threading—or multithreading—can help you create scalable applications that are more responsive to user input. In this course, learn from Microsoft MVP Chander Dhall how to write applications that perform multiple tasks at the same time. Chander covers basic threading concepts, including context switching and exception handling. He also discusses how to synchronize code, use a mutex and a semaphore, and more.

Instructor Chander Dhall

## Understanding threading

### Thread

* Basic Unit of execution that are allocated processor time by an operating system.
* Sequences of program instruction that can be managed independently by a scheduler.
* Thread schedulers are part of the operating system.

### Threading

#### Single-threaded program

* Only one thread has full access to the process

#### Multithreaded program

* Execution model allows multiple threads to coexist within the process
* Threading also referred to as multithreading
* Threads execute independently but share resources within the process

### Common Threading Scenarios

#### Thick client applications

* Run computation-intesive code on a different thread than the UI thread

#### Divide and conquer algorithms

* Use multiprocessor computers

#### Scalability

* Ensures scalability by ability to handle large volume of requests
