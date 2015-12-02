# Yeti Monitor

There is a monitoring work done in [Yeti-Health-Monitoring](https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-Health-Monitoring.md). 

Currently Yeti testbed lacks sufficient information to reflect the status of Yeti operation, in aspect of availability, consistency and performance.It also lacks tools to measure the result of experiments of like introducing more root server, KSK rollover, Multi-ZKSs etc.

In this document we plan to build a more advanced monitoring tool for Yeti testbed. Note that we assume Atlas probes and any tool can be integrated into our monitor

## 1. Yeti Distribution Master 

_Since the only ones who need access to DM are the Yeti root servers,
maybe we can make a script that we ask root server operators to run
which run these tests? -Shane_

### Availability

* Ping6 all the servers periodically (10 minutes)

_Also `traceroute6` -Shane_

* Send queries to all the DM server periodically (10 minutes)
* TTL, dig query respone time

### Consistency

Compare the consisency in following apsects:

* Serial Number

_We can check the entire SOA (since it is modified). -Shane_

* DNSKEY RRset
* NS RRset
* Root zone (TLD data)

_We know that Paul's zone omits "unnecessary" glue, so we need to make
sure that we do NOT check for this. -Shane_

### Performance

* Multi-ZSK perforamce or test(?)
* KSK rollverover performance or test(?)

_I don't know what these tests would look like from the DM view -Shane_

## 2. Root server 

###Availability 

Like DNSMon, Yeti monitor can help people to understand the current and historical availability of root serer in whole (or each one) , from various geographic locations. There are some measurement metrics and tools suggestion:

_We can use RIPE Atlas, but we can also make a script which runs
measurements on any Unix machine. We can ask people to help us
monitor, including not only root operators but also other interested
people._

* Ping6 all the servers periodically (10 minutes)

_Also `traceroute6` -Shane_

* send queries to all the server periodically (10 minutes)
* Use a set of probes（100）to query, and count the number and ratio of unanswered query.
* TTL, dig query respone time
* Traceroute on demand (print dug information in the we bpage from different probes)

_I think we should just use traceroute regularly. Not as often as
ping, but often enough that we can spot routing and other networking
shifts. -Shane_

### Consistency

Compare the consisency in following apsects:

  * Serial Number

_We can check the entire SOA (since it is modified). -Shane_

  * DNSKEY RRset
  * NS RRset
  * Root zone (TLD data)

_We know that Paul's zone omits "unnecessary" glue, so we need to make
sure that we do NOT check for this. -Shane_

### Performance

  * DNSSEC validation
      * Resolver validataion test(?)

_We can perform a lookup of signed, unsigned, badly signed, and other
error servers (like the SERVFAIL.NL site), and make sure they work
correctly. -Shane_

  * Larege DNS packets(Priming+DNSSEC, DNSKEY, Any query)
      * The ratio of unanswered packets?
      * the ratio of TC trancation

_This is less monitoring and more looking at our packet captures,
right? Or maybe the dsc information? I'm not sure exactly what the
goal is here. -Shane_

## 3. other system in Yeti project

_I guess we use Nagios (or Icinga?) for this monitoring?_

### DSC/data collecting system

	Monitor root server upload data or not
### Mail system
	up or down, debug information available  

_HTTP for the web page, and SMTP for the mail server. -Shane_

### Tickets system
	up or down, debug information available  

_HTTP and HTTPS. -Shane_

### Yeti web server
	up or down, debug information available  

_HTTP and HTTPS. -Shane_





