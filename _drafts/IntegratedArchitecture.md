# integration styles

- file exchange
- shared DB between apps - hard to design backend to be used by all applications
- Remote procedure call - извикване на отделечен service през ясно специфициран интерфейс - sync
  * CONS tight coupling by intreface is the main problem( app A know fizically where app B is)
  * PROS - separate DB for every app
- Message based - message bus proxy every message from one app to another app
  * PROS - apropriate for async
  * CONS - hard to configure, hard to mantain


SOA vs REST
REST - resource oriented architecture. With http verbs you change resourceses

REST - consumption layers(user sentric information)
SOA - orcestration and comunication between landscape components


REST has Chache, uniform interfaces

WS vs REST

REST is lean because is simple. Hard to mantain large bussiness logic.
WS - for many bisuness clients with many bussiness logic.
