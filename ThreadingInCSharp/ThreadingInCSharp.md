# Threading in C#

## About

[Course Link](https://www.linkedin.com/learning/threading-in-c-sharp)

2h 3m  Beginner + Intermediate  Released: March 22, 2018  

Threading is a powerful tool for developers, and having a solid grasp of how it works is key to creating high-performing applications. Threading—or multithreading—can help you create scalable applications that are more responsive to user input. In this course, learn from Microsoft MVP Chander Dhall how to write applications that perform multiple tasks at the same time. Chander covers basic threading concepts, including context switching and exception handling. He also discusses how to synchronize code, use a mutex and a semaphore, and more.

Instructor Chander Dhall

## Introduction to Threading

### Understanding threading

#### Thread

* Basic Unit of execution that are allocated processor time by an operating system.
* Sequences of program instruction that can be managed independently by a scheduler.
* Thread schedulers are part of the operating system.

#### Threading

Single-threaded program

* Only one thread has full access to the process

Multithreaded program

* Execution model allows multiple threads to coexist within the process
* Threading also referred to as multithreading
* Threads execute independently but share resources within the process

#### Common Threading Scenarios

Thick client applications

* Run computation-intensive code on a different thread than the UI thread

Divide and conquer algorithms

* Use multiprocessor computers

Scalability

* Ensures scalability by ability to handle large volume of requests

### Tips

For debug purposes it's good to put names in threads.  
`thread.name = "New Thread Name" `

When Debugging, we can open the **Thread Windows**
`Windows` -> `Debug` -> `Thread`


### How threading works

* Multithreading is managed internally by a thread scheduler
* .NET Common Language Runtime (CLR) delegates thread scheduling task to the operating systems

### Shared Resources

* The CLR assigns each thread its own local memory stack to keep local variables separate
* A separate copy of local variables is created on each thread's memory stack

### Thread scheduler

* Ensure all active threads are allocated appropriate execution time

### Single-Processor Computers

Timeslicing

* Rapidly switching execution between each of the active threads
* Typically takes tens of milliseconds in Windows

### Multiprocessor Computers

* Different threads run code simultaneously on different processors

### Preempted Threads

* Thread that has execution interrupted, usually by an external factor such as timeslicing
* Thread has no control over when and where it is preempted