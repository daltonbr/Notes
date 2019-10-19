# Docker for Begginers

**Docker Tutorial for Beginners - A Full DevOps Course on How to Run Applications in Containers**
Author: Mumshad Mannambeth
Video on [Youtube](https://www.youtube.com/watch?v=fqMOX6JJhGo).

https://kodekloud.com/p/docker-labs

## Objectives

* What are Containers?
* What is Docker?
* Why do you need it?
* What can it do?

* Run Docker Containers
* Create a Docker Image
* Networks in Docker
* Docker Compose

* Docker Concepts in Depth

* Docker for Windows/Mac

* Docker Swarm
* Docker vs Kubernetes

## Docker Overview

### Why do you need docker?

Setting up environments with Web Servers, Database, Messaging, Orchestration systems can be a difficult challenge when we want to accommodate all dependencies between libraries, OS, Hardware Infrastructure, just to name a few.
This problem is know as **The Matrix from Hell**.

* Compatibility/Dependency
* Long setup time
* Different Dev/Test/Prod environments

### What can we do?

With Docker we add one more layer in top of the OS, the so called Containers.

* Containerize Applications
* Run each service with its own libraries/dependencies in separate containers

### What are containers?

Containers are complete isolate environments, they have theirs own Processes, Networks interfaces and Mounts, and they share they same OS Kernel.

Setting up container environment is hard, as this task is a very low level one, but Docker offer some high level interface for that.

Each OS has an OS Kernel (For Linuxes they share the same Kernel normally) and a custom Software that is different for each OS.

Docker can run any flavor of OS on top of each as long as they are based on the same Kernel, e.g. iin a Ubuntu machine (host) we can run a Fedora Software with Docker.

To run Windows 