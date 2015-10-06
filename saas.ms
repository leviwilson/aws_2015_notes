# Building SaaS Applications (Tuesday 10/6/2015)

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

### Isolated Customer Stacks
* easier to adopt
* heavyweight
* harder to scale
* lots of resources; likely under-utilized
* bodes a bit better for isolation?
* use tagging for billing

### Containerization (Docker)
* [EC2 Container Service](https://aws.amazon.com/ecs/)

### Shared Model
* any service can handle any request at any time
* requires pulling out statefulness
* harder to pull off for legacy; easier for greenfield
* more challenging for metering / monitoring on an individual customer basis


## Best Practices for Solution Design
### optimize for cost and performance
* horizontally scale every layer
* leverage services that already do it

### Design for multi-_multi_-tenancy
* many accounts :arrow_right: users :arrow_right: roles
* know the lifecycle of your data
* tiered storage approach
  * low-latency for common searches
  * consider archival for data / different services for other types of services
  * data location service abstraction?

### Collect Everything and Learn From It
* collect data on Day 1
* analyze it later; you will learn things
  * collecti reliably; store durably
* monetize the data that you collect

