docker-logstash-rabbitmq
========================

Docker PoC build for LS/RabbitMQ

You can tweek this more by changing the Logstash ls-run command to pull the config remotely somehow then the logstash base would be the same for frontend and backend

First Steps
-----------

git clone this repo
Download logstash-1.3.3-flatjar.jar and place in LS-Base

Starting
--------

Start the RabbitMQ docker build first
Then the LS-Front (Because RabbitMQ needs exchange before clients)
Then start as many LS-Backends as you see fit.

Next Steps
----------

Laugh mechanicly as things happey
Fork, and pull any suggestions ;)


BTC: 1LS39mqnjUPrZAhsrLdL2cYyqK5UW9eFf2
