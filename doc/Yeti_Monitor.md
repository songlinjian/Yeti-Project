# Yeti Monitor

There is a monitoring work done in [Yeti-Health-Monitoring](https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-Health-Monitoring.md). 

Currently Yeti testbed lacks sufficient information to reflect the status of Yeti operation, in aspect of availability, consistency and performance.It also lacks tools to measure the result of experiments of like introducing more root server, KSK rollover, Multi-ZKSs etc.

In this document we plan to build a more advanced monitoring tool for Yeti testbed. Note that we assume Atlas probes and any tool can be integrated into our monitor

## 1. Yeti Distribution Master 

### Availability

* Ping6 all the servers periodically (10 minutes)
* Send queries to all the DM server periodically (10 minutes)
* TTL, dig query respone time

### Consistency

Compare the consisency in following apsects:

* Serial Number
* DNSKEY RRset
* NS RRset
* Root zone (TLD data)

### Performance

* Multi-ZSK perforamce or test(?)
* KSK rollverover performance or test(?)

## 2. Root server 

###Availability 

Like DNSMon, Yeti monitor can help people to understand the current and historical availability of root serer in whole (or each one) , from various geographic locations. There are some measurement metrics and tools suggestion:

* Ping6 all the servers periodically (10 minutes)
* send queries to all the server periodically (10 minutes)
* Use a set of probes（100）to query, and count the number and ratio of unanswered query.
* TTL, dig query respone time
* Traceroute on demand (print dug information in the we bpage from different probes)

### Consistency

Compare the consisency in following apsects:

  * Serial Number
  * DNSKEY RRset
  * NS RRset
  * Root zone (TLD data)

### Performance

  * DNSSEC validation
      * Resolver validataion test(?)

  * Larege DNS packets(Priming+DNSSEC, DNSKEY, Any query)
      * The ratio of unanswered packets?
      * the ratio of TC trancation

### Query taffic analysis (From DSC page?) 
	* Ratio of TCP and UDP query
	* Statistics of lenght of response
	* Ratio of A and AAAA query

## 3. other system in Yeti project

### DSC/data collecting system

	Monitor root server upload data or not
### Mail system
	up or down, debug information available  
### Tickets system
	up or down, debug information available  
### Yeti web server
	up or down, debug information available  





