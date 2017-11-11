# Abstract 
- In a relatively short period of time, the Internet has had an amazing impact on almost every facet of our lives. 
- With Internet, we are able to access to new ideas, more information, unlimited possibilities, and a whole new world of communities.
- The Internet has grown and evolved to influence how we interact, how we conduct business, how we learn, and how we proceed day to day and as much as it has changed our lives, in the process, the Internet itself has changed too.
- The internet is a vital part of our lives. Just like your car, body, and robot underlings, your internet connection can be fine-tuned and made to work more efficiently. With just a little bit of effort, your surfing experience can be noticeably improved.
- nowadays Smartphones, watches, homes, and cars are increasingly requiring stable internet connections. Home appliances, door locks, security cameras, cars, wearables, dog collars, and so many other inert devices are beginning to connect to the web.
- In the world continuously connected with Internet needs to be stable and reliable, it should be able to deliver data on time and incorrect format.

# Methodology
- To measure Stability of Internet, we used nodes-pairs from Planet Lab – A global research network. The Pairs we used are as Under
  - US - CZ
  - US - PL
  - US – GR
  - US - NZ
  - US – CA
- In measurement Project I had made scripts which ping & traceroute its pair node periodically. Each node will ping & traceroute to another node every 1 hour.
- In this project, I had created Bash Shell Scripts for various Functions. Usage and basic details of scripts are as under.

| Script Name        | description |
|:-------------|:------------------|
| Injector  |  To inject Scripts on Nodes using SSH & SCP command. | 
| Process_check  |  To Check Status of Process on the Node. |
| Logger  |  To Log on Nodes With its project specific Alice. |
| Data_reciver  |  To Retrieve Ping & Traceroute data Files on Local Server.  |
| Dir_deleter  |  To Clean Nodes delete all scripts and data.  |
| Demon_TA1_UN  |  A Basic Example of Script Which I had ran on Node. |

- In Addition Of all Bash Scripts I had used third-party python script, which I got from stack overflow.
- I had put demon and pingparser.py on Node and it generates dump of Ping & dump of traceroute to its Paired Node.
- Moreover, It generates CSV file containing basic data like hope counts, host destination, average and more.
- Every day running the scripts I checked status of my Process on every node & Retrieved data from Node.
