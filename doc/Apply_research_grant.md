# Internet Operations Research Grant

## Basic Information

* Research Project Title 
```
Research and Technical activities in Yeti DNS Project
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
	2)IPv6 enabled programe (IPv6 Forum),2013,as designer of Certificate test for IPv6 
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
draft-song-dnsop-tcp-primingexchange-00.txt
draft-song-sunset4-ipv6only-dns-00.txt
draft-madi-dnsop-udp4dns-00.txt
draft-muks-dns-message-fragments-00.txt
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
Yeti DNS project's aim is to build a live Root DNS server system testbed for operational research. 
It is founded by three parties including BII, WIDE and TISF, contributed by its participants. It 
has three-years duration and specific research scope. To be clear, this application of the grant 
is not for the whole project for three years. The grant will be applied by one of the founders & 
coordinators BII to support its research and technical activites in the scope of Yeti DNS project 
in the first year. 

Firstly, the background of Yeti DNS project will be introduced, and then interest of BII in Yeti 
project and its relevence for Internet operation in AP region will be explained briefly. The last 
is the expected outcome.

1. Introduction of Yeti DNS Project

"One World, One Internet, One Namespace" is the essence for the success of today's Internet. 
The top level of the unique identifier system, the DNS root system, has been operational for 25+ 
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
explored on this testbed covering several aspects but not limited to: 
	* IPv6-only operation
	* DNSSEC key rollover
	* Renumbering issues
	* Scalability issues
	* Multiple zone file signers

Interested parties in this community like individual researchers, labs of universities, 
companies and institutes are welcome to join us as Yeti root server operators (at least 
25 operators), recursive name server operators, and individual researchers. It is expected 
that Yeti Project can also gain the support from vendors, for example, the DNS software 
implementers, Developers of CPE devices & IoT devices, middle box developers who can test 
their product and connect their own testbed into Yeti testbed.

Note that the Yeti DNS project has complete fealty to IANA as the DNS name space manager. 
All IANA top-level domain names will be precisely expressed in the Yeti DNS system, 
including all TLD data and meta-data. We hope to inform the IANA community by peer-reviewed 
science as to future possibilities to consider for the IANA root DNS system.

For more information, please visit www.yeti-dns.org.

2. Research Interest and activities of BII in Yeti DNS project

BII aims of specification, testing and research on reliability, interoperability, 
security of Internet architecture technology, like IPv6, DNS,IEEE1888 and SDN. In one 
hand, expertise and know-how on specific area is value of BII for its consulting customer, 
on another hand, BII hope to develop and contribute Internet by outreaching and building
connections with community.

As to the Interest of BII in Yeti DNS Project, there are mainly two points:

1) IPv6-only operational study. It is Davey's personal research interest to investigate 
the capability of IPv6-only network and system. It is important for DNS to migrate to 
dual-stack and pure IPv6 environment in the whole process of IPv6 transition. However, 
currently many DNS are still  work on IPv4-only environment, even for NS server for large 
Internet company like google. There is a early talk given by Davey in ICANN Tech day.

https://singapore49.icann.org/en/schedule/mon-tech/presentation-ipv6-transition-24mar14-en.pdf   

2) Operational policy and technical study for DNS root system. 

Technically it is interesting for us to firstly study the system mechanism of IANA root 
server operation, then explore the possibility of future advanced DNS root system. There 
are some discussion and proposals in ICANN ITI panel to predict the future DNS and root 
system (https://www.icann.org/en/system/files/files/iti-report-15may14-en.pdf).
  
There are also IETF drafts discuss how to pervasively distribute the root services by 
using unowned address (draft-lee-dnsop-scalingroot-00), or reduce the latency by slaving 
the root via Loopback address (draft-ietf-dnsop-root-loopback-05).

In Yeti DNS project, We hope to measure whether 512B limit still hold in IPv6 environment, 
We also hope to explore operational proposals to increasing the number of root server. 

3. Relevance for Internet Operation in Asia Pacific region

The two points of BII's interest should be applicable for the context of this section 
as well, which will definitely help to enhance the technical communication and information 
sharing in the technical community in AP region. 

In addition, the administration of DNS root system is a hot topic in Internet governance 
field, political and technical mixed field, given the background of IANA transition. 

Compared to RIPE NCC and ARIN regions, the number of root server operator and the number 
of root server instances in AP region do not match the population of netizens and booming 
internet development in this region. Internet communities from countries like China, 
India and Korea may hope to increase their importance in both technical and policy 
decisions. Especially after Snowden event, more importance will be attached to reduce 
external dependency and  surveillance risk which is addressed in the problem statement 
of Yeti DNS project. (https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti_PS.md )

4. The pontential outcome

From BII's perspective, our research and technical activities in Yeti DNS project will 
firstly benefit the project with our engineer work, by building the tesbed, maintain 
the sub-system of this project like website, mailing list, tickets system, Traffic 
capture and collection, root system Monitoring etc. 

We will also propose experiment idea, test in BII lab's environment, and ask the Yeti 
community to approve before we put into Yeti testbed. During the firstly of Yeti DNS 
project, BII will produce some draft proposal in the scope of Yeti, test plan and technical 
report fot some experiments. According to the result of experiments, hopefully we can output 
some IETF experimental/ informational document and research papers

During the first year, we are going to organize some Yeti DNS project gathering, like beer 
bof meeting or yeti workshop. We will participant in some international conference to 
introduce our activity and technical findings.

We are glad to work closely with APNIC and participants in AP region.

```
### Research objective: 
Main focus of the research, what it wants to achieve.

```
The Problem statment and research objectives of Yeti DNS project is posted in Yeti 
website and Github repo: https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti_PS.md

The BII's research and technical activities in the first year including following 
activities: 

1. Building Yeti Testbed and procedure of project mangement 

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

2. Introducing Experimental Traffic 

For operational reaserch it is very impoart to have sufficient real traffic in Yeti 
testbed in order to make any messurement operational meaningful. Their are three 
approaches:

* Deploy some resolves in Universities and research region. Yeti deployment in BUPT 
is a typical case. Although it only contributes less than 1 qps into Yeti root system, 
but it views as a good example to expand our Testbed.
* Mirror and replay some real traffics  (impelment by one of yeti participant)
* Use some existing experimental tool like Atlas to generate traffic for special experiment;


3. Research and experiment in BII lab enviroment 
    
* DNS Root Server renumbering. We may come up with a mechnism which dynamically 
updates root server addresses to hint file. 

* Multiple zone file editors. We will use IANA root zone as a source of zone info. Each 
of BII, TISF, and WIDE modifies the zone independently at only its apex. Some mechinisms 
will be coined to prevent accidental mis-modification of the DNS Root zone. 

we already have proposals on this issue:
https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-DM-Setup.md
https://github.com/BII-Lab/Yeti-Project/blob/master/doc/Yeti-DM-Sync.md

* Multiple zone file signers. To discover the flexibility and resiliency limits of 
Internet root zone distribution designs, we can try multiple DMs with one KSK and one 
ZSK for all, and we can try multiple DMs with one KSK for all and one ZSK for each.

4. operation measurement in Yeti testbed 

* IPv6-Only Operation. We are try to run the Yeti testbed in pure IPv6 environment.
* More root servers. We are going to recuite 25 root server into in Yeti testbed. 

```

### Research Methodology: 
How the research will be undertaken, data availability, data processing, etc.

```
Each experiment will have a unique design, depending on the particular topic
being researched. Nevertheless, they will usually share common features, which
mean setting up a set of DNS servers in a specific configuration, then
measuring the query traffic that comes in and looking for given behavior.

Experiments may be executed either in a lab-only environment, or on the Yeti
platform at large. A lab-only experiment can be executed by BII independently.

Experiments that are run on the Yeti platform require a consensus of the
participants, of who BII is currently one of 13. The Yeti project has a simple
experimental protocol:

https://github.com/shane-kerr/Yeti-Project/blob/experimental-protocol/doc/Experiment-Protocol.md

An experiment on the Yeti platform goes through four phases:

1. Proposal  
   The first step is to make a proposal. This should be sent in an e-mail to
   yeti-discuss@lists.yeti.org. A sample template is included below. It is
   discussed and if accepted by the Yeti participants then it can proceed to
   the next phase.

2. Lab Test  
   The next phase is to run a version of the experiment in a controlled
   environment. The goal is to check for problems such as software crashes or
   protocol errors that may cause failures on the Yeti network, before putting
   onto the experimental network. This is not intended to be comprehensive, but
   rather a simple precaution and proof-of-concept. (Note that this may be done
   before the proposal is submitted, but feedback may result in a different
   experimental design, which may mean that the lab test would have to be done
   again.)

3. Yeti Test  
   The next phase actually running the experiment on the Yeti network. Details
   of this will depend on the experiment. It must be coordinated with the Yeti
   participants.

4. Report of Findings  
   When completed, a report of the findings of the experiment should be made.
   It need not be an extensive document. (This may be delayed, for example if
   the experimenter wishes to publish a paper in a peer-reviewed journal
   first.)

In all cases the main tool for analyzing results are pcap packet captures. This
format is documented on the Wireshark Wiki:

https://wiki.wireshark.org/Development/LibpcapFileFormat

In both lab and Yeti experiments, we log every query received in pcap format.
This provides both the full contents of the packet along with the timestamp of
arrival. Generally replies are not logged, as we know the contents of reply
packets based on the query.


Research Methodology Example:

We are going to be reviewing the impact of having multiple ZSK for the root
zone. Normally the root zone has a single KSK, which signs a single ZSK, which
in turn signs the root zone. However, we wish to explore having independent ZSK
operators, which means each would have their own ZSK. (This means that the
secret parrt of the ZSK never has to be given to another organization.)

The first step is to document this fully, and identify possible issues. In the
case of multiple ZSK there may be problems because of increased packet size,
and also because of unexpected DNS resolver behavior (either bugs or varied
interpretations of the standard specifications).

The next step would be to set up a lab test. This would first mean building a
baseline set of authority servers using a single ZSK, running expected queries
using popular DNS resolvers (such as BIND, Unbound, and PowerDNS Recursor). The
second step would be re-running the tests using the same set of authority
servers using multiple ZSK.

If problems were discovered in the lab, the experiment might be done. The
results would be documented and published as a finding.

If no problems were discovered, then the Yeti root zone would be modified to
include multiple ZSK, and a key rollover would be performed to add the new ZSK.
Traffic would be captured and monitored for changes in client behavior. A
report detailing these changes, as well as changes in network load and so on
would be published.

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
* if avaiable and applicable, it is good to prodcue some update and reslut to APNIC blog 
periodically 

Deliverable:
D1. Two research papers or Technical reports on Yeti experiments 
D2. One IETF experiment draft on Yeti Technical activity and findings 
D3. One software tools developed for Yeti DNS project 
D4. One public workshop for Yeti community and interested people
D5. One presentation or technical report in APNIC blog
D6. Setup cooperation and invite at least two campus/institute to join Yeti DNS project
D7. Build a Yeti testbed with 25 root servers and deliver a full description of Yeti testbed.

```
### Follow-up and monitoring: 
How the research team will track progress in a manner that is appropriate for the specific research proposed.

```
* Three coordinators of Yeti DNS project setup one hour conference call every one or two 
weeks to track the progress of project

* In BII team we have a tickets system for specific task.
```

## Budget

### Total funds requested in AUD

```
Amount in AUD： 31,000
```
* Equipments

```
Description：

Amount in AUD
```
* Personnel (salaries for staff hired for research project)

```
Description：There nare two full time staff and 4 part-time engineers for Yeti DNS project in BII. It will be appriciated to cover part of the cost of personnel.   

Amount in AUD :12,0000
```
* Professional services (consultant fees)

```
Description: Expert consulting paid by hourly rate, and invite expert to travel 

Amount in AUD: 13,000
```
* Research expenses

```
Description: Print, publication

Amount in AUD: 1,000
```
* International travel

```
Description: To attend APNIC meeting for one time 

Amount in AUD: 5,000
```
* Support Services

```
Description

Amount in AUD
```

```
[Y] No indirect cost rates or fees will be covered under this grant.
```
```
[Y]Grant will be allocated in AUD, local currency exchange rates fluctuations will not affect the grant amount.
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
