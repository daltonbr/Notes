# AWS Developer - Big Picture

A PluralSight Course

[@ryanmurakami](https ://twitter.com/ryanmurakami)
[www.ryanhlewis.com](www.ryanhlewis.com)

## What is AWS

Core Services of AWS

* Elastic Cloud Compute (EC2)
* Simple Storage Service (S3)*
* Relational Database Service (RDS)
* Route53 - domain names

Extra Services

* Elastic Beanstalk (EB) - app container service
* Lambda - serveless code execution
* DynamoDB - managed NoSQL DB, support document and key DB
* Virtual Private Cloud (VPC) - securing your services
* CloudFront - CDN
* CloudWatch - logs and monitoring

Competitors

* Microsoft Azure
  * Azure caught up with AWS regarding a robust service offerings as well as a strong global reach.
  * Best place to run Microsoft Products.

* Google Cloud Platform (GCP)
  Specializations in Big Data, Kubernetes, and AI

* Heroku
  * Cloud services provider started around 2007, initially exclusively for Ruby
  * Simple for beginners and focused in hosting applications
  * Lack the breadth and depth of AWS

## Core Services

### Elastic Cloud Compute (EC2)

Instances of Virtual Machines.

Run apps
Virtual Desktops
3rd Party Software

**Security Group**
IP-based communication rules for a single or group of service instances

### Simple Storage Service (S3)*

Bucket is your root directory
can trigger events
keep versions of objects
replicate objects across regions

Buckets are assigned via URL

### Relational Database Service (RDS)

RDS collection of AWS services for managed Relational DB.

* scheduled automated backups
* Simple software updates
* Managed infrastructure

Running your DBs in EC2 mean that you need to take care of Redundancy, Patches and Backups yourself.

Easy config
Read replicas

Offers

* MySQL
* PostgreSQL
* SQL Server
* MariaDB
* Oracle Database
* Amazon Aurora
* MongoDB (Document DB)

When picking an RDS you choose an instance of EC2, matching a hardware for this.

Consider using a supported RDBMS supported by RDS.

### Route53 - domain names

DNS to help connect services in AWS

Can health check links

## Enhancing your App with AWS Databases and Application Services

* Elastic Beanstalk (EB) - app container service
* Lambda - serverless code execution
* DynamoDB - managed NoSQL DB
* Virtual Private Cloud (VPC) - securing your services
* CloudFront - CDN
* CloudWatch - logs and monitoring

## Interact with AWS

### SDK

```sh
// Node.js
npm install aws-sdk
// Ruby
gem install aws-sdk
```

### CLI

Typing manually in a command line
Inside shell scripts or batch files

#### AWS CLI Command Structure

```sh
aws <service> <command> <arguments>
```

[CLI Reference v2](https://awscli.amazonaws.com/v2/documentation/api/latest/index.html)

Installer for Windows and Pip install for Mac/Linux
