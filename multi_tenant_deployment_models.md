# Multi-Tenant Application Deployment Models ARC340 (Wednesday, 10/7/2015)

## Key Challenges
* request routing and handling
* change management
* data security and isolation
* deployment patterns

## Pattern 1: The Retro
* Deploy an entire application stack per tenant
* Isolation at the AWS resource level (EC2 instance, etc.)
* When to consider
  * Black box applications (packaged, legacy, etc.)
  * Snowflake configurations (every install is different)
  * Low effort, but with cloud scale
* *Challenges:*
  * Cost efficiency; resource management
  * This is _not_ modern cloud architecture

## Pattern 2: The Bridge
* Hybrid model to bridge from retro to modern
* leverage "containerization" to drive greater efficiency
* drive request context throughout architecture
* *When to consider:*
  * see the retro; same reasons plus...
  * Transitioning to SOA/uServices - enabling refactoring
  * Blending monolithic components into a modern architecture
* *Challenges:*
  * multiple change management approaches
  * refactoring to a shared services model

With this hybrid approach, something to consider is you can start to move away from legacy by placing layers that have knowledge about where to get the data.

## Pattern 3: The Pool
* All resources are shared across all tenants
* Any service can handle any request from any tenant
* Pure services models embracing "share nothing" architecture
* *When to consider:*
  * always - usually new app development
  * SOA/uServices and service ownership is embraced
* *Challenges:*
  * factoring out request context, state, etc.
  * Evolving state through `<couldn't see the slide because of mother fucker standing in front of me>`

## Pattern 4: The Serverless (lambda)
* event-driven model for service interacions
* no (or few) managed server instances
* leverages AWS managed scalable services
* *When to consider:*
  * IoT, batch/event processing, mobile apps - new architectures
  * async-oriented interaction models
* *Challenges:*
  * transient nature of processing and debugging
  * monitoring state of full transient system

## Addressing Challenges

### Routing
#### Pattern 1
Routing is straight forward; it's a distinct path so you really don't have to do much.

#### Pattern 2
It's kind of up to the service, so you have to pass around the identity to know where things should go to.

### Change Management
* API Gateway allows you to swap things over at the flip of a switch

### Security
* key management service? (KMS)


