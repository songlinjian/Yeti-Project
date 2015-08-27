## Problem Statement 

The problems and policy concerns over Root DNS system mainly stem from unfortunate centralization from the point of view of DNS content consumers, including external dependency, surveillance threat. 

* External Dependency. Currently, there are 12 Root DNS operators, 13 root Letter with 400+ instances deployed globally. Compared to the connected devices, AS networks, recursive server, the number of root instance is far from sufficiency. Connectivity loss between one autonomous network and the IANA root name servers usually results in loss of local service within the local network, even when internal connectivity is perfect. Also this kind of extenral dependcy will introduce extra cost when BGP routing path is occationally lenghtened by route flapping.

* Surveillance risk. Even when one or more root name server anycast
instances are deployed locally or nearby, the queries sent to the root servers carry DNS lookup information which enables root operators or other partie to analyize the DNS query traffic. This is a kind of information leakage in some extent which will not be acceptable by local network policy maker.

There are also some techinical problems in IPv6, DNSSEC and Renumbering operation since them are firstly introduce to the root system. 

* Nowadays DNS is relied on IPv4. Even some DNS servers already support both A & AAAA record but they still do not response to IPv6 queries. IPv6 introduce larger IP packet MTU(1280B) and different fragmentation model. It is not clear whether it can survive without IPv4 in IPv6-only enviroment, and the the impact of IPv6-only enviroment introduced to current DNS operation. (expcially Root system).

* KSK rollover, as a procedure to update the public key in resolvers, has been a significant issue in DNSSEC. Nowadays, IANA rolls ZSK every six weeks but for reliability issue, KSK is never rolled as of writing. Thus, the way of rolling KSK and the effect of rolling key (including ZSK and KSK) frequently are never fully examined. It is worthwhile to test KSK rollover using RFC5011 to synchronize the validators in a live DNS root system. In addition, currently DNSSEC 1024 bits RSA keys are used. The effect of using key with more bits is never tested because a longer key will enlarge DNS answer packets with DNSSEC which is not desiralbe. It is valuable to observe the effect of changing keys’ bits in a test environment. Encryption algorithm such as ECC, as another factor that would also affect packet size.

* Renumbering issue. Nowadays Internet users or enterprises may change their network providers. As a result their Internet numbers for particular servers or services like IP address and AS numbers may change accordingly which is called renumbering their networks and servers. It is likely that root operators may change their IP addresses for root servers as well. Since there is not dynamic update mechanism to info that changes to resolvers and other internet infrastructure relying on root service, the renumbering issue of root server become a fragile part of the whole system.

Accordingly, to the problem space there is solution space existing which needs experiments to test and verify in the scople of Yeti DNS project to provide some evidences to the issues above. 

* IPv6-Only Operation. We are try to run the Yeti Root testbed in Pure IPv6 enviroment. 

* Key/Algorithm rollover. We are going to design a plan on yeti testbed and conduct some experiment with more frequent change of ZSK and KSK.

* Root system Renumbering. We may come up with a mechnism dynamic updates root servers’ address to hint file like another kind of rollover.

* More root servers. We are going to test more than 13 root name server in Yeti testbed and to see "how many is too many".

* Multiple zone file editors. We will use IANA root zone as a source of zone info. Each of BII, TISF, and WIDE modifies the zone independantly at only its apex. Some mechinisms should be coined to prevent accidental mis-modificaiton of Root zone. In addtional we may implement and test “shared zone control” idears proposed in the ICANN ITI report* from 2014. ICANN ITI report : https://www.icann.org/en/system/files/files/iti-report-15may14-en.pdf

* Multiple zone file signers. To discover the flexibility and resiliency limits of Internet governance design, we can try multiple DMs with one KSK and one ZSK for all, and we can try multiple DMs with one KSK for all and one ZSK for each.

## We are not

* We **never and ever try  to create and provide alternate name space**. Yeti DNS project has complete fealty to IANA as the DNS name space manager from the beginning of its conception. Any necessary modifications of the current IANA zone (like the NS recode for "." ) will be dicussed publicly and given a clear reason. 

* We are not going to develop or expriment alternative governance model, regarding the concern arised in many occations that a certain TLD(mostly ccTLD) will be removed intentionally as an additional option for punishment or sanction from USG to against its rivals. It maybe discussed or studied by differenet projects, but not Yeti. In Yeti we keep the same trust anchor(KSK) and the chain of trust to prevent on-path attacks and prvasiavley distribute root services base on the current model.
