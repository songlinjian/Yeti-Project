# Yeti Mutli-ZSK 测试方案 Yeti Multi-ZSK testing plan

## 背景和目标 Background and aim
Yeti平台采用Multi-DM 的设置，让每个DM有自己的独立管理域和权限，包括根区生成，密钥管理和签名机制；
Multi-ZSK的方案是其中关键一环。测试的目的是为了验证现有DNS协议和软件机制是否能够通过合理的配置完成
Multi-ZSK的功能，并且找到解决方案。

Yeti adopts the setup of Multi-DM to enable each DM to have its own independent zone of 
administration and authority of administration, including the generation of root zones,
management of secret keys, and mechanism of signature. Multi-ZSK plan is a key part therein, 
and the aim of testing is to validate whether the current DNS protocol and software 
mechanism can complete the functions of Multi-ZSK through reasonable configuration 
with solutions identified. 

## 协议分析和结果预测 Protocol anaylsis and result prediction 
[TODO] 
In current IANA root zone, TTL of DS(86400) is less than TTL of DNSSEC Key(172800). So the Key will update sooner than the DNSSEC signature. So it is easy to prove that if a resolver simpley handover to another root server with different ZSK, the validation will fail.

## 测试方案 Testing Plan

### 测试场景设置 Scenario setup of testing

如图1所示，一个resolver，两个root server(可以看做是两个DM)，如图所示连接. 
As shown in the diagram, there are one resolver and two root servers (which can be 
considered two DMs), and the connection is shown in the diagram.

DNS服务器的设置如下：
 * 有相同的名字空间，包括顶端NS记录
 
 * 有共同的KSK， 但是分别采用不同的ZSK签名（ZSK A和ZSK B）
 
 	* ZSK 的参数可以相同也可以不同，比如有效时间
 	
 * Resolver 配置Hint文件中只包含这两个根服务器
 
 * Resolver 支持key rollover

The setup of DNS servers is as follows: 
 * There is the same naming space, including the top NS record
 * There is the same KSK, but with different ZSK signatures (ZSK A and ZSK B)
 * ZSK parameters can be the same or different from each other, such as the valid time. 
 * The resolver setup hint file only includes the two root servers. 
 * Resolver supports the key rollover


```
+---------------+          +---------------+  
|    Root A     |          |     Root B    |  
|               |          |               |  
+-------+-------+          +--------+------+  
        |                           |        
--------+------------+--------------+--------                       
                       |                        
             +---------+----------+             
             |                    |                      
             |     Resolver       |                        
             +--------------------+             
```
### 测试流程 Testing Procedure

 * Step1: 在Time 1时间段，关掉Root B， 让Resolver 先从Root A 进行初始化priming，进行某一个签名TLD的查询，
 需要DNSSEC验证（获取KSK和ZSK公钥）
 
 * Step2: 在Time 2时间段，关掉Root A, 让Resolver 切换到Root B进行同样的查询
 
 * Step3: 比较第一次和第二次查询结果，如果查询结果相同表示测试通过，如果结果不同，输出相应的log或者debug结果
 
 * Step4: 在ZSK轮转期间重复step1-3，比较ZSK轮转期间与之前的测试结果
 
 * Step1: during the Time 1 period, turn off Root B, and let Resolver initiate priming 
 from Root A to conduct the query of a certain signed TLD. The DNSSEC verification 
is needed (to obtain KSK and ZSK public keys)
 * Step2: During Time 2 period, turn off Root A, and let Resolver shift to Root B to 
 conduct the same query.
 * Step3: The first and second query results put into comparison, if the query results 
 are the same as each other, then it means the test passes; If the results are different 
 from each other, then output the corresponding log or debug results. 
 * Step4: Repeat the step1-step3 during the ZSK rollover, and compare the test results 
 during ZSK rollover with those before. 


### 不同的测试场景 Different scenarios of tests

 * Case 1: 第一Root A和Root B按照默认配置，只携带自己的ZSK，按照测试流程step1-3 观察可鞥出错的情况
 
 * Case 2: 让Root A和Root B 同时携带两个ZSK A和ZSK B（参数相同），重复测试流程step1-3，观察
 resolver是否能够验证成功
 
 * Case 3: 在Case2的基础上，ZSK A和ZSK B的有效时间参数相同（比如1个小时），擦偶偶step4 测试，观察结果
 
 * Case 4: 改变ZSK A和ZSK B的有效时间参数（比如1个小时和1个半小时），将Case 3重做一遍 
 	* 轮转期间可能有好几种可能：A,B同时轮转，A轮转B不轮转，AB都不轮转
 	
注：Case4中会比较复杂，可以最后做，或者要求所有DM采用同样的参数。

 * Case 1: The first Root A and Root B are configured according to the default, 
 and they only carry their own ZSK. The errors can be observed according to the 
 procedure from 1 to 3
 * Case 2: Let Root A and Root B carry ZSK A and ZSK B at the same time (the same parameter), 
 and repeat the procedure from 1 to 3. 
 * Case 3: On the basis of Case 2, ZSK A and ZSK B have the same valid time parameter
 (such as one hour), and conduct the step 4 to the result. 
 * Case 4: Change ZSK A and ZSK B valid time parameters (such as one hour and half an hour), 
 and repeat Case 3 once. 
 	* There are many possibilities during the rollover, simultaneous rollover of A and B, 
 	A rollover and B without rollover, and both A and B without rollover.  

Note: it might be complicated in Case 4, which can be done at the end, or we can require 
all the DMs adopt the same parameter. 

### 测试结果分析 Analysis of the test results

测试有可能有一下几种结果：

 * 输出测试结果，根据数据分析结果的原因
 * 不需要任何软件改变，通过配置即可完成multi-zsk功能，输出配置方法和运营建议
 * 需要软件实现的改变，通过增加补丁完成

There might be some of the following test results:
 * Output the test results, and analyze the cause of the results according to the data
 * No need to change the software. The Multi-ZSK function can be completed through 
 configuration, and then the configuration methods and operation advice are output. 
 * It is needed to change the software by adding patches

