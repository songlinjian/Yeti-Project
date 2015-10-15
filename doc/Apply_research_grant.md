# Internet Operations Research Grant

## Basic Information

* Research Project Title 
```
Yeti DNS Project
```
* The research project is submitted on behalf of an organization
* Name of organization conducting the research
```
Beijing Internet Institute (more specifically, BII Lab)
```
* Country
```
China
```

* Organization Type 
```
Private sector
```
* Website
```
http://www.biigroup.com
```

## Referee

* The proposal submitted is supported by
```
University
```
* Referee's Name
```
Professor Ma Yan
```
* Referee's Affiliation/Title: 
```
BUPT, Professor 
```
* Referee's Email
```
mayan@bupt.edu.cn
```
* Referee's Support Letter: (pdf file)

## Full name of lead researcher

* Full name of lead researcher
```
Davey Song
```
* Gender
```
Male
```
* Postal address to contact lead researcher
```
2/F, Building 5, No.58 Jinghai Road, BDA, Beijing, China
```
* Phone number to contact 
```
+8613810106659
```
* Email of lead researcher
```
ljsong@biigroup.cn
```
* Online CV or LinkedIn Profile
```
https://www.linkedin.com/pub/davey-song/75/256/242
```
* Previous Research Experience:

```
Davey got Ph.D from Tsinghua University and his research mainly focus on the field of 
Internet architecure and IPv6 transition. In BII he lead serveal IPv6 pilot projects 
in China.
 
1. Project(mainly in China):
	1)IPv6 transition InterOp, 2012, Chief architect and manager
	2)IPv6 enabled programe (IPv6 Forum),2013,as designer of 		Certificate test for IPv6 
	readiness of website and DNS system
	3)IPv6 and DNS monitoring and analysis platform, 2014 (sub-projcet from CNGI)

2. Publications (Linjian is Davey's Chinese name):

* Linjian Song, Zhen Li, Research and practice on IPv6 Test and certificate,ZTE Technology 
Journal,2013 (in Chinese)
* Linjian Song, Jianping Wu , Yong Cui, A Novel Load Balancer for Scalable Multi-NAT, 
Chinese Journal of Electronics, 2012 
* Linjian Song, Jianping Wu , Yong Cui, Insensitive queuing model for carrier grade network 
address translation . Journal of Tsinghua University，2012 (In Chinese)
* Song Linjian, Jianping Wu , Yong Cui, A Cluster-based Load Balancing for Multi-NAT, ICEEE 2011 
* Linjian Song, Jianping Wu, Yong Cui, Haozhun Jin, LENT: Loss-free and Energy-efficient 
Network Traversing for IPv4-IPv6 Coexistence, CAMAN 2012.
* Linjian Song, Jianping Wu, Haozhun Jin, Yong Cui, A Measurement Study on Large-Scale Address 
Sharing in IPv4-IPv6 Coexistence, CAMAN 2012.
* Yong Cui, Linjian Song, Ke Xu, RCS: A Distributed Mechanism against Link Flooding DDoS Attacks. 
Lecture Notes in Computer Science. ICOIN, 2006 
* Yong Cui, Ke Xu, Jian-Ping Wu, Lin-Jian Song , Application layer multicast mechanism for 
large-scale real-time streaming media. Journal of Software: 394-402 ,2009
* Wang Li, Zhang Suwei, Li Zhansheng, Song Linjian and Cui Yong, A Multi-Path Routing Protocol 
Based on Divide and Conquer Strategy in Ad Hoc Network. CWSN’07 
* Yong Cui, Ke Xu, Jian-Ping Wu, Lin-Jian Song, CBroadcast：An application layer multicast mechanism 
based on combination of central control and self-organization. IJAHUC, 2007 

3.Some IETF work


```
## Summary of research proposal

### Research topic background and justification
Concisely state the topic that your research proposal will be focusing on and why such topic 
is relevant for Internet Operations in the Asia Pacific region. Describe the existing context 
and how the research outcomes will 1) inform the availability, reliability, and security of the 
Internet in the Asia Pacific region to widen its coverage, use and benefit for the community or 
2) support the development of the Internet research community in the Asia Pacific region. If 
necessary, include references to support your argument.

```
1. Introduction of Yeti DNS Project

"One World, One Internet, One Namespace" is the essence for the success of today's Internet. T
he top level of the unique identifier system, the DNS root system, has been operational for 25+ 
years. It is a pivot to make the current Internet useful. So it is considered somewhat ossified 
for stability reasons. It is hard to test and implement new ideas evolving to a more advanced level 
to counter challenges like IPv6-only operation, DNSSEC key/algorithm rollover, scaling issues, etc. 
Because changes to the current production system are not risk-free, and a large-scale testbed is 
necessary, on which extensive tests and studies of the impact can be carried out. It is possible 
to pre-evaluate such changes in a laboratory test, however, the coverage is limited. In order to 
make the test more practical, it is also necessary to involve users’ environment which is highly 
diversified, to study the effect of the changes in question. 
 
As a result the proposal of the Yeti DNS Project is formed which is aiming to build such a live 
environment. The basic idea is to build a paralleled experimental live root system to provide 
useful technical output with the existing production systems. Possible research agenda will be 
explored on this testbed covering several aspects but not limited to: IPv6-only operation, DNSSEC 
key rollover, Renumbering issue, the scalability issues, multiple zone file signers and Multiple 
zone file signers. In addition measurement study will be done to issue out useful analysis as 
output of the Yeti DNS Project.

Participants will be invited into the Yeti DNS Project which is hopefully helpful for their 
own interests. We would like to invite some interested parties in this community, like the 
research labs of universities and institutes. We also hope the Yeti DNS Project can gain the 
support from vendors, for example, the DNS software implementers, Developers of CPE devices & 
IoT devices, Middlebox developers who can test their product and connect their own testbed into 
the Yeti DNS testbed. It is expected that the activity of the Yeti DNS Project could have good 
input to the DNS related industry, which will finally make them ready for advanced DNS and Root 
services.  

Possible research agenda will be explored on this testbed covering several aspects but not 
limited to:

* IPv6-only operation
* DNSSEC key rollover
* Renumbering issues
* Scalability issues
* Multiple zone file signers

2. Relevence for Internet Opertation in Asia Pacific region

By caculate 

3. The pontential outcome

```
### Research objective: 
Main focus of the research, what it wants to achieve.

```

1. Problem Statement

Some problems and policy concerns over the DNS Root Server system stem from 
unfortunate centralization from the point of view of DNS content consumers. 
These include external dependencies and surveillance threats.

* External Dependency
Currently, there are 12 DNS Root Server operators for the 13 Root Server 
letters, with more than 400 instances deployed globally. Compared to the number 
of connected devices, AS networks, and recursive DNS servers, the number of 
root instances is far from sufficient. Connectivity loss between one autonomous 
network and the IANA root name servers usually results in loss of local service 
within the local network, even when internal connectivity is perfect. Also this 
kind of external dependency will introduce extra network traffic cost when BGP 
routing is inefficient.

*Surveillance risk. 
Even when one or more root name server anycast instances are deployed locally or 
in a nearby network, the queries sent to the root servers carry DNS lookup information 
which enables root operators or other parties to analyize the DNS query traffic. 
This is a kind of information leakage which is to some extent not acceptable to 
some policy makers.

There are some technical issues in the areas of IPv6 and DNSSEC, which were introduced 
to the DNS Root Server system after it was created, and also when renumbering DNS 
Root Servers.

* Currently DNS mostly relies on IPv4. Some DNS servers which support both A & AAAA 
(IPv4 & IPv6) records still do not respond to IPv6 queries. IPv6 introduces larger 
IP packet MTU (1280 bytes) and a different fragmentation model. It is not clear 
whether it can survive without IPv4 (in an IPv6-only enviroment), or what the 
impact of IPv6-only environment introduces to current DNS operations (especially 
in the DNS Root Server system).

* KSK rollover, as a procedure to update the public key in resolvers, has been a 
significant issue in DNSSEC. Currently, IANA rolls the ZSK every six weeks but 
the KSK has never been rolled as of writing. Thus, the way of rolling the KSK and 
the effect of rolling keys (including both ZSK and KSK) frequently are not yet 
fully examined. It is worthwhile to test KSK rollover using RFC5011 to synchronize 
the validators in a live DNS root system. In addition, currently for the ZSK 
1024-bit RSA keys are used, and for the KSK 2048-bit RSA keys are used. The effect 
of using key with more bits has never tested. A longer key will enlarge DNS answer 
packets with DNSSEC, which is not desirable. It is valuable to observe the effect 
of changing key bit-lengths in a test environment. Different encryption algorithms, 
such as ECC, are another factor that would also affect packet size.

* Renumbering issue. Currently Internet users or enterprises may change their network 
providers. As a result their Internet numbers for particular servers or services, 
like IP address and AS numbers, may change accordingly. This is called renumbering 
networks and servers. It is likely that root operators may change their IP addresses 
for root servers as well. Since there is no dynamic update mechanism to inform 
resolvers and other internet infrastructure relying on root servic of such changes, 
the renumbering issue of root server is a fragile part of the whole system.

2. Research plan

According to the problem space there is a reasech topic list to address each problem. 

* IPv6-Only Operation. We are try to run the Yeti testbed in pure IPv6 environment.
    
* Key/Algorithm rollover. We are going to design a plan on Yeti testbed and conduct 
some experiment with more frequent change of ZSK and KSK.

* DNS Root Server renumbering. We may come up with a mechnism which dynamically 
updates root server addresses to hint file. 

* More root servers. We are going to test more than 13 root name server in Yeti testbed 
and to see "how many is too many".

* Multiple zone file editors. We will use IANA root zone as a source of zone info. Each 
of BII, TISF, and WIDE modifies the zone independantly at only its apex. Some mechinisms 
will be coined to prevent accidental mis-modificaiton of the DNS Root zone. In addition 
we may implement and test “shared zone control” ideas proposed in the ICANN ITI report 
from 2014. ICANN ITI report: https://www.icann.org/en/system/files/files/iti-report-15may14-en.pdf

* Multiple zone file signers. To discover the flexibility and resiliency limits of 
Internet root zone distribution designs, we can try multiple DMs with one KSK and one 
ZSK for all, and we can try multiple DMs with one KSK for all and one ZSK for each.

3. Building Yeti Testbed 

Before we conduct any experiment a stable tstbed enviroment is necessary to support all 
the research activities. There is a list of documents posted in the yeti DNS project 
website called Yeti document describe how Yeti testbed works.

* Problem statment of Yeti DNS Project
https://github.com/songlinjian/Yeti-Project/blob/master/doc/Yeti_PS.md 
* How to become a Yeti operator
https://github.com/songlinjian/Yeti-Project/blob/master/doc/OnBoarding.md
http://yeti.dns-lab.net/join.html
* How Yeti DMs work
https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-DM-Setup.md
* Data sharing document
https://github.com/BII-Lab/Yeti- Project/blob/master/doc/DataSharingDeclaration.md
* Yeti Health monitoring
https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-Health-Monitoring.md
* DSC/Data server backup plan
https://github.com/BII-Lab/Yeti-Project/blob/master/doc/DSC-Data-Sever-backup.md

To support the project, some engineer work is also needed to build and maintian the 
project website, mailing list, tickets system, Traffic capture and collection, root 
system Monitoring etc.

4. Introducing Experimental Traffic 

For operational reaserch it is very impoart to have sufficient real traffic in Yeti 
testbed in order to make any messurement operational meaningful. Their are three 
approaches:

1) Deploy some resolves in Universities and research region. Yeti deployment in BUPT 
is a typical case. Although it only contributes less than 1 qps into Yeti root system, 
but it views as a good example to expand our Testbed.

In early phase we ca also try :

2) Mirrior and replay some real traffics  (impelment by one of yeti participant)
3) Use some existing experimental tool like Atlas to generate traffic for special experiment;

5.We are not

* We never and ever try to create and provide alternate name space. Yeti DNS project has 
complete fealty to IANA as the DNS name space manager from the beginning of its conception. 
Any necessary modifications of the current IANA zone (like the NS records for "." ) will be 
dicussed publicly and given a clear reason.

* We are not going to develop or expriment with alternative governance models, regarding 
the concern arised in many occasions that a certain TLD (mostly ccTLD) will be removed 
intentionally as an additional option for punishment or sanction from USG to against 
its rivals. It maybe discussed or studied by different projects, but not Yeti. In Yeti 
we keep the same trust anchor (KSK) and the chain of trust to prevent on-path attacks and 
distribute root services based on the current model.

```

### Research Methodology: 
How the research will be undertaken, data availability, data processing, etc.

```
Experiment protocol and plan 
Operationa study tool 
	system monitoring
	traffic capture and analysis (DSC page)

2 examples
	Yeti Root naming scheme and Glue issue
    Knot 2.0 bugs

```
### Research capacity and supporting environment:
Research team experience and capacity to achieve the planned objective and details 
about the supporting environment in which the research team will be working hosted 
by an organization, in partnership with others, etc.

```
Yeti DNS Project was founded by three coordinators: WIDE, BII, and TISF(Paul Vixie's 
personal project). Now BII plays the leading role to cooperate with other coordinators, 
building Yeti testbed, operating currenty DM(Distributation Master, VeriSign's role in 
IANA root system), inviting participant, outreaching to community and most importantly
response for research proposal and validation in BII lab enviroment before implement 
in Yeti Testbed.

Yeti DNS Project is set 3-year duration for its activity and BII commit to fully 
support the project by donating engineers and necessary resource for the research 
Goal. Right now, in BII Lab, we have 6 engineers, a small IDC with 20 racks, serverl 
nodes aboard, dual-stack AS network peering with Cernet/Cernet2.

Since we annoucned Yeti project, yeti testbed already have 13 participants as yeti 
root server operaotr when the application is being written (http://yeti-dns.org/operators.html). 
Some of them are active by testing, finding bugs and replyimg mirrored traffic. Idealy we 
hope to recruit 25 root server in Yeti testbed. 

BII work closely with other two coordniators as well. We have our mailling list, weekly 
meeting calls, f2f meeting, workshop occationally, usually during some event and conference.

Our team keep close connection with ICANN/ IETF / RIR, sharing inforation and keep our peers 
posted on our project. 

More discussion of yeti project, please visit our mailing list. 
http://lists.yeti-dns.org/mailman/listinfo/discuss


```

### Research Outcomes: 
Publications, tools, visualizations, papers, policies. Schedule of APNIC blog post during 
project lifecycle.

```
Accroding each research&experiment results, we are going to produce some deliverbales as 
reserach outcomes of this project(in the duration of Grants):

* Techincal report, paper publication on Yeti testbed, experiments, measurement study, etc.   
* IETF experimental draft document about Yeti activities
* Tools during the experiment of Yeti, like BIND pathces, softwire tools, some visualiztiing 
page for syste monitoring;
* policies recommandation from the experience of Yeti root operation experiment
* if avaiable and applicable, it is good to prodcue some updat and reslut to APNIC blog 
periodically 

```
### Follow-up and monitoring: 
How the research team will track progress in a manner that is appropriate for the specific research proposed.

```

```

## Budget

### Total funds requested in AUD

```
Amount in AUD
```
* Equipments

```
Description

Amount in AUD
```
* Personnel (salaries for staff hired for research project)

```
Description

Amount in AUD
```
* Professional services (consultant fees)

```
Description

Amount in AUD
```
* Research expenses

```
Description

Amount in AUD
```
* International travel

```
Description

Amount in AUD
```
* Support Services

```
Description

Amount in AUD
```

```
[Y/N]No indirect cost rates or fees will be covered under this grant.
```
```
[Y/N]Grant will be allocated in AUD, local currency exchange rates fluctuations will not affect the grant amount.
```
## Timeline

### Schedule
[TODO]
### Time

Name

* Davey
* Shane Kerr
* Kevin Gong
* Runxia Wan
* Guigao Pang
* Ruigang Ma
* Zhen Li

## Supporting documentation:
Upload documentation or add URL that provides evidence about research capacity
