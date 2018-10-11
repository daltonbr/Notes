# Threading in C\#

<!-- TOC -->

- [Threading in C\](#threading-in-c)
    - [About](#about)
        - [What you should know](#what-you-should-know)
    - [1 Introduction to Threading](#1-introduction-to-threading)
        - [Understanding threading](#understanding-threading)
            - [Thread](#thread)
            - [Threading](#threading)
            - [Common Threading Scenarios](#common-threading-scenarios)
        - [Tips](#tips)
        - [How threading works](#how-threading-works)
        - [Shared Resources](#shared-resources)
        - [Thread scheduler](#thread-scheduler)
        - [Single-Processor Computers](#single-processor-computers)
        - [Multiprocessor Computers](#multiprocessor-computers)
        - [Preempted Threads](#preempted-threads)
        - [Threads vs. Processes](#threads-vs-processes)
        - [Shared Resources (Lock)](#shared-resources-lock)
        - [Local Memory](#local-memory)
        - [Thread Pool](#thread-pool)
            - [Background Threads](#background-threads)
            - [Thread Pool](#thread-pool)
            - [Ways to Enter a Thread Pool](#ways-to-enter-a-thread-pool)
        - [Other Concepts](#other-concepts)
        - [Exception Handling](#exception-handling)
    - [2 Tasks vs. Threads](#2-tasks-vs-threads)
        - [Threads](#threads)
        - [Tasks](#tasks)
        - [CPU Bound](#cpu-bound)
        - [I/O Bound](#io-bound)
        - [Tasks with IO](#tasks-with-io)
        - [Tasks with Continuation](#tasks-with-continuation)
        - [Task Chaining](#task-chaining)
    - [3 Synchronization](#3-synchronization)
        - [Blocking vs. Spinning](#blocking-vs-spinning)
            - [Exclusive Locks](#exclusive-locks)
            - [Nonexclusive locks](#nonexclusive-locks)
            - [Signaling Constructs](#signaling-constructs)
            - [Nonblocking Synchronization](#nonblocking-synchronization)
        - [Nested Locks](#nested-locks)
        - [Dead Lock](#dead-lock)
        - [Reader / Writer Lock](#reader--writer-lock)
        - [Mutex](#mutex)
        - [Semaphore](#semaphore)

<!-- /TOC -->

## About

[Course Link](https://www.linkedin.com/learning/threading-in-c-sharp)

2h 3m  Beginner + Intermediate  Released: March 22, 2018  

Threading is a powerful tool for developers, and having a solid grasp of how it works is key to creating high-performing applications. Threading or multithreading can help you create scalable applications that are more responsive to user input. In this course, learn from Microsoft MVP Chander Dhall how to write applications that perform multiple tasks at the same time. Chander covers basic threading concepts, including context switching and exception handling. He also discusses how to synchronize code, use a mutex and a semaphore, and more.

Instructor Chander Dhall

### What you should know

- Familiarity with C#
- .NET 4.6.1
- Visual Studio 2017
- Finished projects included in exercise files for reference

## 1 Introduction to Threading

### Understanding threading

#### Thread

- Basic Unit of execution that are allocated processor time by an operating system.
- Sequences of program instruction that can be managed independently by a scheduler.
- Thread schedulers are part of the operating system.

#### Threading

Single-threaded program

- Only one thread has full access to the process

Multithreaded program

- Execution model allows multiple threads to coexist within the process
- Threading also referred to as multithreading
- Threads execute independently but share resources within the process

#### Common Threading Scenarios

Thick client applications

- Run computation-intensive code on a different thread than the UI thread

Divide and conquer algorithms

- Use multiprocessor computers

Scalability

- Ensures scalability by ability to handle large volume of requests

### Tips

For debug purposes it's good to put names in threads.  
`thread.name = "New Thread Name" `

When Debugging, we can open the **Thread Windows**
`Windows` -> `Debug` -> `Thread`


### How threading works

- Multithreading is managed internally by a thread scheduler
- .NET Common Language Runtime (CLR) delegates thread scheduling task to the operating systems

### Shared Resources

- The CLR assigns each thread its own local memory stack to keep local variables separate
- A separate copy of local variables is created on each thread's memory stack

### Thread scheduler

- Ensure all active threads are allocated appropriate execution time

### Single-Processor Computers

Timeslicing

- Rapidly switching execution between each of the active threads
- Typically takes tens of milliseconds in Windows

### Multiprocessor Computers

- Different threads run code simultaneously on different processors

### Preempted Threads

- Thread that has execution interrupted, usually by an external factor such as timeslicing
- Thread has no control over when and where it is preempted

### Threads vs. Processes

Threads

- Run in parallel within a single process
- Share memory with other threads running in the same application
- Has a limited degree of isolation from each other

Processes

- Are **fully** isolated from each other

### Shared Resources (Lock)

```csharp
using System;
using System.Threading;

namespace SharedResources
{
    class Program
    {
        private static bool isCompleted;
        static readonly object lockCompleted = new object();

        static void Main(string[] args)
        {
            Thread thread = new Thread(HelloWorld);
            //Worked Thread
            thread.Start();
            //Main Thread
            HelloWorld();
        }

        private static void HelloWorld()
        {
            lock (lockCompleted)
            {
                if (!isCompleted)
                {
                    isCompleted = true;
                    Console.WriteLine("Hello World should print only once");

                }
            }

        }
    }
}
```

### Local Memory

```csharp
using System;
using System.Threading;

namespace LocalMemory
{
    class Program
    {
        static void Main(string[] args)
        {
            //Worker Thread
            new Thread(PrintOneToThirty).Start();

            //Main Thread
            PrintOneToThirty();
        }

        private static void PrintOneToThirty()
        {
            // this i variable is local to each thread
            for (int i = 0; i < 30; i++)
            {
                Console.Write(i + 1 + " ");
            }
        }
    }
}
```

### Thread Pool

- Every thread has overhead in time and memory (just about some milliseconds, basically creating the stack and spawning the thread)
- 1 mb of memory per thread (aprox)
- Thread pools reduce the performance penalty by sharing and recycling threads
- Threads pools only create background threads

#### Background Threads

- Identical to foreground threads, except the managed execution environment is not kept running
- If the main thread dies, background threads will terminate abruptly

_Creating a background thread_
```csharp
    Thread backgroundThread = new Thread(BackgroundThread);
    backgroundThread.IsBackground = true;
    sbackgroundThread.Start();
```

#### Thread Pool

- Limits the number of threads that can run simultaneously
- Too many threads can throttle the OS with the administrator burden they carry, also can render CPU caches ineffective
- When limit is reached, all jobs forma a queue and begin only when another job finishes
- ThreadPool has the ability to cap the number of worker threads it should be allowing at any given point of time. The cap has to be bigger than the number of cores that you have in your System. (Tip `Environment.ProcessorCount;`)

```csharp
//  this property help us to know if we are using a pool
bool Thread.CurrentThread.IsThreadPoolThread
```

#### Ways to Enter a Thread Pool

- Task parallel library
- Asynchronous delegate
- Background work
- Call `ThreadPool.QueueUserWorkItem`

```csharp
using System;
using System.Threading;

namespace ThreadPoolDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Thread.CurrentThread.IsThreadPoolThread);

            Employee employee = new Employee();
            employee.Name = "Chander Dhall";
            employee.CompanyName = "Cazton";

            ThreadPool.QueueUserWorkItem(
                new WaitCallback(DisplayEmployeeInfo), employee);

            var processorCount = Environment.ProcessorCount;
            ThreadPool.SetMaxThreads(processorCount * 2, processorCount * 2);

            int workerThreads = 0;
            int completionPortThreads = 0; 
            ThreadPool.GetMinThreads(out workerThreads, out completionPortThreads);

            ThreadPool.SetMaxThreads(workerThreads * 2, completionPortThreads * 2);

            Console.WriteLine(Thread.CurrentThread.IsThreadPoolThread);

            Console.ReadKey();
        }

        private static void DisplayEmployeeInfo(object employee)
        {
            Console.WriteLine(Thread.CurrentThread.IsThreadPoolThread);
            Employee emp = employee as Employee;
            Console.WriteLine("Person name is {0} and company name is {1}", emp.Name, emp.CompanyName);
        }
    }

    public class Employee
    {
        public string Name { get; set; }
        public string CompanyName { get; set; }
    }
}
```

### Other Concepts

- `thread.Join()` will make the Main thread wait for the Worker thread to finish
- `Join` and `Sleep` will both block the thread
- `thread.IsAlive()` is very handy

```csharp
using System;
using System.Threading;

namespace Concepts
{
    class Program
    {
        static void Main(string[] args)
        {
            Thread thread = new Thread(PrintHelloWorld);
            thread.Start();
            thread.IsBackground = true;
            thread.Join();
            Console.WriteLine("Hello World printed");
        }

        private static void PrintHelloWorld()
        {
            Console.WriteLine("Hello World");
            Thread.Sleep(5000);
        }
    }
}
```

### Exception Handling

- Exception handling is **per thread**
- We must put our Try-Catch block inside the thread, otherwise, we can't catch it.

```csharp
using System;
using System.Threading;

namespace Exceptions
{
    class Program
    {
        static void Main(string[] args)
        {
            Demo();
        }

        private static void Demo()
        {
            // Worker thread
            new Thread(Execute).Start();
        }

        static void Execute()
        {
            // Try-Catch block inside the Worker thread
            try
            {
                // hacking, forcing a nullptr exception
                throw null;
            }
            catch (Exception ex)
            {

            }

        }
    }
}
```

## 2 Tasks vs. Threads

### Threads

- Lowest-level constructors of multithreading
- Working with threads can be challenging
- Complicated process to return a value from a separated thread
- To get a return value from a thread, the only way is to use `thread.join()`, waiting the thread to complete, and then use a shared field to get the value from the thread. (Very complicated)

### Tasks

- Higher-level abstractions
- Capable of returning values
- Can be chained
- May use a thread pool
- May be used for **I/O bound** operations

### CPU Bound

- Uses resources of a local machine (computational bounding, fibonacci series)
- Computation-intensive

### I/O Bound

- Out-of-process calls
- Operations can take an indeterminate amount of time because they wait for external input
- Release local resources while waiting for response

```csharp
using System;
using System.Threading;

namespace Exceptions
{
    class Program
    {
        static void Main(string[] args)
        {
            Demo();
        }

        private static void Demo()
        {
            // Worker thread
            new Thread(Execute).Start();
        }

        static void Execute()
        {
            // Try-Catch block inside the Worker thread
            try
            {
                // hacking, forcing a nullptr exception
                throw null;
            }
            catch (Exception ex)
            {

            }

        }
    }
}

```

_Tasks with a return type, using Generics_

```csharp
using System;
using System.Threading;
using System.Threading.Tasks;

namespace TaskIntro
{
    class Program
    {
        static void Main(string[] args)
        {
            Task task = new Task(SimpleMethod);
            task.Start();

            Task<string> taskThatReturns = 
                new Task<string>(MethodThatReturns);
            taskThatReturns.Start();
            taskThatReturns.Wait();
            Console.WriteLine(taskThatReturns.Result);
        }

        private static string MethodThatReturns()
        {
            // Simulating a job
            Thread.Sleep(2000);
            return "Hello";
        }

        private static void SimpleMethod()
        {
            Console.WriteLine("Hello World");
        }
    }
}

```

### Tasks with IO

```csharp
using System;
using System.Threading.Tasks;

namespace TasksIo
{
    class Program
    {
        static void Main(string[] args)
        {
            Task<string> task = Task.Factory.StartNew<string>
                (() => GetPosts("https://jsonplaceholder.typicode.com/posts"));

            SomethingElse();

            try
            {
                task.Wait();
                Console.WriteLine(task.Result);
            }
            catch (AggregateException ex)
            {
                Console.WriteLine(ex.Message);
            }

            Console.ReadKey();

        }

        private static void SomethingElse()
        {
            //Dummy implementation
            Console.WriteLine("Dummy implementation");
        }

        private static string GetPosts(string url)
        {
            // Hack to simulate a null exception
            //throw null;
            using (var client = new System.Net.WebClient())
            {
                return client.DownloadString(url);
            }
        }
    }
}
```

### Tasks with Continuation

Continuation

- Asynchronous task that is invoked by another task called an antecedent

### Task Chaining

- Pass data from the antecedent to the continuation task
- Use exception passing from antecedent to continuation
- Control how the continuation is invoked
- Able to cancel a continuation
- Invoke multiple continuations
- Invoke continuation based on completion of antecedents

To continue chaining while passing a type T, use `antecedent.ContinueWith<T>()`, or `antecedent.ContinueWith()` to chain tasks without a type.

```csharp
using System;
using System.Threading.Tasks;

namespace TaskChaining
{
    class Program
    {
        static void Main(string[] args)
        {
            Task<string> antecedent = Task.Run(() =>
            {
                Task.Delay(2000);
                return DateTime.Today.ToShortDateString();
            });
            Task<string> continuation = antecedent.ContinueWith(x =>
            {
                return "Today is " + antecedent.Result;
            });

            Task<string> anotherContinuation = continuation.ContinueWith<string>(x => { return "Another continuation " + continuation.Result; });

            Console.WriteLine("This will display before the result");
            Console.WriteLine(continuation.Result);
            Console.WriteLine(anotherContinuation.Result);
        }
    }
}
```

## 3 Synchronization

- Act of coordinating actions of multiple threads or tasks running concurrently
- Necessary when running multiple threads to get predictable outcomes

Options for synchronization

- Blocking methods
- Locks
- Signals
- Nonblocking constructs

Blocking methods

- Sleep
- Join
- Task.Wait

### Blocking vs. Spinning

Blocking

- Blocked threads **do not** consume CPU
- Blocked threads **do** consume memory

Spinning

- Consumes CPU for as long as the thread is blocked
- `While (x < limit)` uses CPU as long as the condition is not met

Locks

- Limit the number of threads
- Exclusive locks
- Nonexclusive locks

#### Exclusive Locks

- Allow only one thread to access a certain section of code
- Alternative is to use `Monitor.Enter` / `Monitor.Exit`

There is two types of exclusive locks

- Lock
- Mutex

#### Nonexclusive locks

- Semaphore
- SemaphoreSlim
- Reader/Writer
- Allow multiple threads to access a resource

Semaphore.maxCount = 1 // almost equivalent to a mutex

#### Signaling Constructs

- Threads pause until they receive a signal from another thread
- Event wait handles and monitor's Wait/Pulse methods
- (.NET 4+) CountownEvent and Barrier classes

#### Nonblocking Synchronization

- `Thread.MemoryBarrier`, `Thread.VolatileRead`, and `Thread.VolatileWrite`, the `volatile` keyword, and the `Interlocked` class
- Protect access to a common field

```csharp
using System;
using System.Threading.Tasks;

namespace LocksAndMonitor
{
    class Program
    {
        static void Main(string[] args)
        {
            Account account = new Account(20000);

            //Action thisIsAnAction = () => account.WithdrawRandomly();
            Task task1 = Task.Factory.StartNew(() => account.WithdrawRandomly());
            Task task2 = Task.Factory.StartNew(() => account.WithdrawRandomly());
            Task task3 = Task.Factory.StartNew(() => account.WithdrawRandomly());
            Task.WaitAll(task1, task2, task3);
            Console.WriteLine("All tasks complete");
        }
    }
}

internal class Account
    {
        Object caztonLock = new Object();
        int balance;
        Random random = new Random();
        public Account(int initialBalance)
        {
            balance = initialBalance;
        }

        int Withdraw(int amount)
        {
            if (balance < 0)
            {
                throw new Exception("Not enough balance");
            }

            //Monitor.Enter(caztonLock);
            //try
            //{
            lock (caztonLock)
            {
                if (balance >= amount)
                {
                    Console.WriteLine("Amount drawn: " + amount);
                    balance = balance - amount;

                    return balance;
                }
                //}
                //finally
                //{
                //    Monitor.Exit(caztonLock);
                //}
                return 0;
            }
        }

        public void WithdrawRandomly()
        {
            for (int i = 0; i < 100; i++)
            {
                var balance = Withdraw(random.Next(2000, 5000));
                if (balance > 0)
                {
                    Console.WriteLine("Balance left" + balance);
                }
                else
                {
                    Console.WriteLine("Balance left" + balance);
                }
            }
        }
    }
```

### Nested Locks

The most outer lock, will lock everything else

```csharp
using System.Threading.Tasks;

namespace NestedLocks
{
    class Program
    {
        static object caztonLock = new object();
        static void Main(string[] args)
        {
            lock (caztonLock)
            {
                DoSomething();
            }
        }

        private static void DoSomething()
        {
            lock (caztonLock)
            {
                Task.Delay(2000);
                AnotherMethod();
            }
        }

        private static void AnotherMethod()
        {
            lock (caztonLock)
            {

            }
        }
    }
}
```

### Dead Lock

```csharp
using System;
using System.Threading;

namespace Deadlocks
{
    class Program
    {
        static void Main(string[] args)
        {
            object caztonLock = new object();
            object chanderLock = new object();
            new Thread(() =>
            {
                lock (caztonLock)
                {
                    Console.WriteLine("Cazton Lock obtained");
                    Thread.Sleep(2000);
                    lock (chanderLock)
                    {
                        Console.WriteLine("Chander Lock obtained");
                    }
                }
            }).Start();
            lock (chanderLock)
            {
                Console.WriteLine("Main Thread obtained Chander Lock");
                Thread.Sleep(1000);
                lock (caztonLock)
                {
                    Console.WriteLine("Main Thread obtained Chander Lock");
                }
            }
        }
    }
}
```

### Reader / Writer Lock

```csharp
using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace ReaderWriterlocks
{
    class Program
    {
        static ReaderWriterLockSlim readerWriterLockSlim = new ReaderWriterLockSlim();
        static Dictionary<int, string> persons = new Dictionary<int, string>();
        static Random random = new Random();
        static void Main(string[] args)
        {
            var task1 = Task.Factory.StartNew(Read);
            var task2 = Task.Factory.StartNew(Write, "Cazton");
            var task3 = Task.Factory.StartNew(Write, "Chander");
            var task4 = Task.Factory.StartNew(Read);
            var task5 = Task.Factory.StartNew(Read);
            Task.WaitAll(task1, task2, task3, task4, task5);
        }

        static void Read()
        {
            for (int i = 0; i < 10; i++)
            {
                readerWriterLockSlim.EnterReadLock();
                Thread.Sleep(50);
                readerWriterLockSlim.ExitReadLock();
            }
        }

        static void Write(object user)
        {
            for (int i = 0; i < 10; i++)
            {
                //int id = random.Next(2000, 5000);
                int id = GetRandom();
                readerWriterLockSlim.EnterWriteLock();
                var person = "Person " + i;
                persons.Add(id, person);
                readerWriterLockSlim.ExitWriteLock();
                Console.WriteLine(user + " added " + person);
                Thread.Sleep(250);
            }
        }

        static int GetRandom()
        {
            lock (random)
            {
                return random.Next(2000, 5000);
            }
        }
    }
}
```

### Mutex

```csharp
using System;
using System.Threading;

namespace MutexLock
{
    class Program
    {
        static Mutex mutex = new Mutex();
        static void Main(string[] args)
        {
            for (int i = 0; i < 10; i++)
            {

                Thread thread = new Thread(AcquireMutex);
                thread.Name = string.Format("Thread{0}", i+1);
                thread.Start();
            }
        }

        private static void AcquireMutex()
        {
            if(!mutex.WaitOne(TimeSpan.FromSeconds(1), false))
            {
                Console.WriteLine("{0}", Thread.CurrentThread.Name);
                return;
            }
            //mutex.WaitOne();
            DoSomething();
            mutex.ReleaseMutex();
            Console.WriteLine("Mutex released by {0}", Thread.CurrentThread.Name);
        }

        private static void DoSomething()
        {
            Thread.Sleep(3000);

        }
    }
}
```

### Semaphore

Since "original" semaphores are a little resource intensive.
`SemaphoreSlim`, as the name suggests, is a much faster and less resource intensive version that was introduced in .NET 4.0

Semaphores ensure that no more than a specified number of concurrent threads can access a particular resource.

```csharp
using System;
using System.Threading;

namespace Semaphores
{
    class Program
    {
        static SemaphoreSlim semaphoreSlim = new SemaphoreSlim(3);
        static void Main(string[] args)
        {
            for (int i = 0; i < 10; i++)
            {
                new Thread(EnterSemaphore).Start(i+1);
            }
        }

        private static void EnterSemaphore(object id)
        {
            Console.WriteLine(id + " is waiting to be part of the club");
            semaphoreSlim.Wait();
            Console.WriteLine(id + " part of the club");
            Thread.Sleep(1000 / (int)id);
            Console.WriteLine(id + " left the club");
        }
    }
}
```