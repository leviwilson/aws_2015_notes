# Building SaaS Applications

## Resource Management
* Ordering
* Provisioning
* Application LCM

## SaaS Application(s)
* Delivery
* Interaction
* Application
* Data Access Layer

## SaaS Offering Types

## Isolated Customer Stacks
* easier to adopt
* heavyweight
* harder to scale
* lots of resources; likely under-utilized
* bodes a bit better for isolation?
* use tagging for billing

## Containerization (Docker)
* [EC2 Container Service](https://aws.amazon.com/ecs/)

## Shared Model
* any service can handle any request at any time
* requires pulling out statefulness
* harder to pull off for legacy; easier for greenfield
* more challenging for metering / monitoring on an individual customer basis

