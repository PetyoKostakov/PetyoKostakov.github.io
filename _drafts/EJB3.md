---
layout: post
---

Java EE fill the need of enterprise of large-scale applications and executed multiuser components in a distributed multiuser environment. EJBs are loosely coupled components.

Ejb defines component model with available three object types:

* session beans - stateless/stateful/singleton they perform business service operation
* message-driven beans - respond to asynchronous external calls

Java EE define persistent domain objects called entity beans
* Entities (Java Persistence API(JPA))

EJB Container - environment where EJB components operate. This environment offers:
* transactional services
* security services
* pooling resources
* caching resources
* component life cycle management
* currency support

JavaBeans Query Language (EJB QL) was introduced, which gave developers the ability to query entity bean instances
using a language that resembled SQL.