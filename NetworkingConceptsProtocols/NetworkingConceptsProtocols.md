# Networking Concepts and Protocols

Ross Bagurdes @bagurdes
Network Engineer

## OSI Model

Open Systems Interconnect

Layer | Name | Example | Obs
--- | --- | --- | ---
7 | **Application** Layer | Hypertext Transfer Protocol (HTTP/S)  
6 | Presentation Layer | | *Not very used nowadays
5 | Session Layer | | *Not very used nowadays
4 | **Transport** Layer | Transmission Control Protocol (TCP) | Setting up sessions (dialing) 
3 | **Network** Layer | IP Addressing | Can connect uniquely to long distance devices
2 | **Data Link** Layer | Ethernet, DOCSIS-3 | Connect one device to another
1 | **Physical** Layer | Physical cables |

## Protocols and Port Numbers

* Data Transfer Protocols
* Authentication Protocols
* Network Service Protocols
* Network Management Protocols
* Audio/Visuals Protocols

### Application Layer Protocols

Transferring Data

Browser on the clients
Server using Apache, NGINX, Microsoft IIS

Application Layer (7) | HTTP | HTTPS
--- | --- | ---
Transport Layer (4) | 80 | 443

Every Application Layer has a Transport Layer (a port number), easily identified how to interpret that traffic.

### File Transfer

FTP | sFTP | TFTP | SMB
--- | --- | --- | ---
20 21 | 22 | 69 | 445

**SSH** also uses port **22**, what happens is that **sFTP** is **wrapped** in a SSH protocol.

**TFTP** - Trivial File Transfer Protocol, meant to be used with small file transfers without authentication.

**SMB** - Server Message Block, a network folder that can be shared in a network.


-==- Stopped at Chapter 03/02