# OnBoarding document for Yeti operator

**Scope**: 
The document will
* Document the basic technical requirment for Yeti root server as well as 
the expectation of human resource as a yeti root operator.
* Specify the procedue of how to join and how to quit as yeti root operator
* Consider the case of one operator running multiple root server
* Make some recommandations to yeti root server operators

### Basic requirement for Yeti root server operator

To be come a yeti root operator, you should know the basic requirements and 
our expectation :

* Understand the purpose and the goal of Yeti projec
* Have some experience on operation of relevant DNS server(s)
* Software , Hardware and Network
 * A dedicated server or VPS 
 * A dedicated IPv6 address (EU64 IPv6 address is not recommand)
 * A decidcated Domain for the server
 * Stable and non-tunnel IPv6 network
 
* Human resources commitment

  Because it is a live testbed for root system experiment, so we do not expect 
any urgent configuration changes. however the server cannot be fully on auto-pilot, 
due to experiments that will affect the distribution master servers and may require 
changes to the authority servers. therefore, we expect authority operators to offer 
24-hour response time to questions and outage notifications, and 72-hour response 
time for planned configuration changes.

**Note** : the coordinators of Yeti DNS project reserve the right to deny the application 
or quit the existing operator if they can not meet the basic requirement.

### How to join and How to quit

Regarding how to join Yeti as a root operaor, there is a document <https://github.com/bii-lab/Yeti-Project#how-to-join-yeti> 
describe the steps to apply and setup the server.

From the coordinators' side, to setup we need your following information:
  
  * IPv6 address to "serve": eui-64 based address should be avoided
  * FQDN of the server
  * IPv6 address used to pull the zone (may be different from the service
  address especially the service is provided by multiple machines).
  this may be required for ACL at DMs.
  * the software and version
  * email for each of responsible persons
  * responsible persons' pgp key registered at pgp.mit.edu is preferable.

If any operator want to quit for some reason, you need to send a mail to 
operator 7 daysin advance

### Consider running multiple root server by one operator

From both research and operational aspects it sounds OK, given that in IANA root 
system VeriSign runs A and J. The only concerns are : 1) the diversity of 
system and network; 2) the opportunity for future participants given 25 is our 
estimate number of of Yeti root NS server.

There is a aggreement for Yeti operator who would like to run **Additional root server** :

* Yeti operator can apply addtional root server only when the number of yeti root 
servers is less than MAX_NUM_Root in Yeti testbed (currently 25);
* meet the basic technical requirement for the addtiaonal sever;
* provide the information of addtional server, IPv6 address(AFXR), domain name, 
the software and versiton;
* Coordinators reserve right to reclaim the **Additional root server** in case:
  * no room for new yeti root operator (given 25 is the limit)
  * and others

### Make some recommandations to yeti root server operators

[TDDO]
