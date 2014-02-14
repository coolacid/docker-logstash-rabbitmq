docker-logstash-rabbitmq
========================

Docker PoC build for LS/RabbitMQ

Why?
----

Ensure delivery of messages. Front end logstash would be configured to expose ports to only accept and tag the messages. This will then push to the AMPQ (RabbitMQ) where it can sit until the next Logstash instance has time to actually work on the log file. 

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

My Next Steps?
-------------

I plan on taking the backend and feeding it back into a new RabbitMQ queue. This queue will be pulled by a RabbitMQ cluster in a central cluster using queue federation, which then gets pulled by yet another LS instance for indexing in Elastic Search.

BTC: 1LS39mqnjUPrZAhsrLdL2cYyqK5UW9eFf2
